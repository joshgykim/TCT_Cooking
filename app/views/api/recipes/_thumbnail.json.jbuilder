json.extract! recipe, :id, :title, :time, :image_url
json.authorName recipe.author.name
if current_user
  json.saved !recipe.savers.where(id: current_user.id).empty?
else
  json.saved false
end