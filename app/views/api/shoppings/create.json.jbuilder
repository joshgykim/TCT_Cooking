json.set! @shopping.recipe.id do
  json.extract! @shopping.recipe, :id, :title

  json.ingredients do
    @shopping.recipe.ingredients.each do |ingredient|
      json.set! ingredient.id do
        json.extract! ingredient, :name, :quantity, :unit
      end
    end
  end
  
end