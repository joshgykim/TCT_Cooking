json.recipes do
  @recipes.each do |recipe|
    json.set! recipe.id do
      json.extract! recipe, :title, :image_url
    end
  end
end

json.collections do
  @collections.each do |collection|
    json.set! collection.id do
      json.extract! collection, :name
      json.image_url collection.recipes.last.image_url
    end
  end
end