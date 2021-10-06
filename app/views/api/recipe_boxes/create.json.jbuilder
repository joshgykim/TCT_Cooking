json.recipe do
  recipe = @recipe_box.recipe
  
  json.extract! recipe, :id, :title, :image_url, :time
  json.authorName recipe.author.name
  json.saved true
end