json.recipes do
  @recipes.each do |recipe|
    json.set! recipe.id do
      json.extract! recipe, :id, :title, :image_url, :time
      json.authorName recipe.author.name
    end
  end
end