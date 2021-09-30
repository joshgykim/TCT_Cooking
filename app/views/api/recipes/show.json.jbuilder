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
    json.name @recipe.author.name
    json.id @recipe.author.id
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