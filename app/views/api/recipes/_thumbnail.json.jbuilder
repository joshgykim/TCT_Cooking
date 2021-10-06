json.extract! recipe, :id, :title, :time, :image_url
json.authorName recipe.author.name
json.saved !recipe.savers.where(id: current_user.id).empty?