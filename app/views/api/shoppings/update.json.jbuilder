json.set! @shopping.recipe.id do
  json.extract! @shopping.recipe, :id, :title, :yield

  json.ingredients do
    omit_arr = @shopping.omitted ? @shopping.omitted.split(" ") : []
    
    @shopping.recipe.ingredients.each do |ingredient|
      if !omit_arr.include?(ingredient.id.to_s)
        json.set! ingredient.id do
          json.extract! ingredient, :name, :quantity, :unit
        end
      end
    end
  end
end