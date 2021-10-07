json.recipe do
  recipe = @recipe_box.recipe
  json.extract! recipe, :id
  json.saved true
end