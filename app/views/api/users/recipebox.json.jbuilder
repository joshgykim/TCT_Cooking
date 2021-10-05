json.recipes do
  @user.saved_recipes.each do |recipe|
    json.set! recipe.id do
      json.extract! recipe, :id, :title, :image_url, :time
      json.authorName recipe.author.name
    end
  end
end

json.categories do
  @user.saved_recipe_categories.each do |category|
    json.set! category.id do
      json.extract! category, :id, :name
      json.recipes Recipe.saved_recipe_by_category(@user.id, category.id)
    end
  end
end