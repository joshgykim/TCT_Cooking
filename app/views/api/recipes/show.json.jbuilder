json.recipe do
  json.extract! @recipe,
    :id,
    :title,
    :description,
    :preparations,
    :yield,
    :time,
    :image_url
  json.author do
    json.id @recipe.author.id
    json.name @recipe.author.name
  end
  json.saved !@recipe.savers.where(id: current_user.id).empty?
  json.rating do
    json.userRating @recipe.ratings.find_by(user_id: current_user.id) ? @recipe.ratings.find_by(user_id: current_user.id).rating : 0
    json.average @recipe.ratings.average(:rating) ? @recipe.ratings.average(:rating) : 0
    json.totalNum @recipe.ratings.length
  end
end

json.categories do
  @recipe.categories.each do |category|
    json.set! category.id do
      json.extract! category, :name
    end
  end
end

json.ingredients do
  @recipe.ingredients.each do |ingredient|
    json.set! ingredient.id do
      json.extract! ingredient, :name, :quantity, :unit
    end
  end
end

json.comments do
  @recipe.comments.each do |comment|
    json.set! comment.id do
      json.partial! 'api/comments/comment', comment: comment
    end
  end
end