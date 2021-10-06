json.author do
  json.extract! @author,
    :id,
    :name,
    :bio
end

json.recipes do
  @author.recipes.each do |recipe|
    json.set! recipe.id do
      json.partial! 'api/recipes/thumbnail', recipe: recipe
    end
  end
end