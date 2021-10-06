class Api::RecipeBoxesController < ApplicationController

  def create
    @recipe_box = RecipeBox.new(recipe_box_params)
    if @recipe_box.save
      render :create
    else
    end
  end

  private

  def recipe_box_params
    params.require(:recipe_box).permit(:recipe_id, :user_id)
  end

end
