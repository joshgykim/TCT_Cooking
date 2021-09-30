class Api::RecipesController < ApplicationController

  def index
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    if @recipe
      render :show
    end
  end

end