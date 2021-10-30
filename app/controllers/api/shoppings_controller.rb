class Api::ShoppingsController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def create
    @shopping = Shopping.new({user_id: current_user.id, recipe_id: params["recipeId"]})
    if @shopping.save
      render :create
    end
  end

end
