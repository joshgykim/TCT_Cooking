json.category do
  json.extract! @category,
    :id,
    :name
end

json.recipes do
  @category.recipes.each do |recipe|
    json.set! recipe.id do
      json.extract! recipe, :id, :title, :time, :image_url
      json.authorName recipe.author.name
    end
  end
end