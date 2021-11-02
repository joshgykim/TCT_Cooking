json.shopping do
  @user.recipes_to_shop.each do |recipe|

    json.set! recipe.id do
      json.extract! recipe, :id, :title, :yield
      
      json.ingredients do
        recipe.ingredients.each do |ingredient|
          json.set! ingredient.id do
            json.extract! ingredient, :name, :quantity, :unit
          end
        end
      end

    end

  end

end