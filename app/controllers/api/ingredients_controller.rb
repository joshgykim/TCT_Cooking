class Api::IngredientsController < ApplicationController

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      render json: ["#{@ingredient.name} saved"]
    else
      render json: ["something wrong"]
    end
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name, :quantity, :unit, :recipe_id)
  end

end
