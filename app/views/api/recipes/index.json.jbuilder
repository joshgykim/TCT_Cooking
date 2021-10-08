json.recipes do
  @recipes.each do |recipe|
    json.set! recipe.id do
      json.partial! 'api/recipes/thumbnail', recipe: recipe
    end
  end
end

json.collections do
  @collections.each do |collection|
    json.set! collection.id do
      rcps = collection.recipes

      json.extract! collection, :name
      json.numRecipes rcps.length
      json.image_url rcps.last.image_url
    end
  end
end