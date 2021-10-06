json.recipe do
  recipe = @recipe_box.recipe
  
  json.partial! 'api/recipes/thumbnail', recipe: recipe
  json.saved !recipe.savers.where(id: current_user.id).empty?
end