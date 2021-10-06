json.recipes do
  @recipes.each do |recipe|
    json.set! recipe.id do
      json.partial! 'api/recipes/thumbnail', recipe: recipe
    end
  end
end