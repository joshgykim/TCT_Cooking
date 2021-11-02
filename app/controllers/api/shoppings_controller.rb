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
    @shopping = Shopping.find_by user_id: current_user.id, recipe_id: params[:id]
    @shopping.destroy
    render :destroy
  end

  def update
    @shopping = Shopping.find_by user_id: current_user.id, recipe_id: params[:data][:recipeId]
    @shopping.update(omitted: @shopping.omitted ? @shopping.omitted + "#{params[:data][:ingredientId]} " : "#{params[:data][:ingredientId]} ")
    render :update
  end
end
