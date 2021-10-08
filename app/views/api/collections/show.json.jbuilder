json.collection do
  json.extract! @collection,
    :id,
    :name,
    :description
end

json.recipes do
  @collection.recipes.each do |recipe|
    json.set! recipe.id do
      json.partial! 'api/recipes/thumbnail', recipe: recipe
    end
  end
end