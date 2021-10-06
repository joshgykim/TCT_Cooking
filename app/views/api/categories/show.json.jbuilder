json.category do
  json.extract! @category,
    :id,
    :name
end

json.recipes do
  @category.recipes.each do |recipe|
    json.set! recipe.id do
      json.partial! 'api/recipes/thumbnail', recipe: recipe
    end
  end
end