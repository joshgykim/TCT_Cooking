class Api::ShoppingsController < ApplicationController

  def show
    @shoppings = Shopping.where(user_id: params[:id])
    render :show
  end

  def create
    @shopping = Shopping.new({user_id: current_user.id, recipe_id: params["recipeId"]})
    if @shopping.save
      render :create
    end
  end

  def destroy
    @shopping = Shopping.find_by user_id: current_user.id, recipe_id: params[:id].to_i
    render :destroy
  end

  def update
    @shopping = Shopping.find_by user_id: current_user.id, recipe_id: params[:recipeId].to_i
    if @shopping.omitted && @shopping.omitted.split(" ").length == @shopping.recipe.ingredients.length - 1
      render :destroy
    else
      @shopping.update(omitted: @shopping.omitted ? @shopping.omitted + params[:ingredientId] + " " : params[:ingredientId] + " ")
      render :update
    end
  end
end
