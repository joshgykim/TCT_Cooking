json.author do
  json.extract! @author,
    :id,
    :name,
    :bio
end

json.recipes do
  @author.recipes.each do |recipe|
    json.set! recipe.id do
      json.extract! recipe, :id, :title, :time, :image_url
      json.authorName recipe.author.name
    end
  end
end