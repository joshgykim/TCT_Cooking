class Api::CategoriesController < ApplicationController

  def show
    @category = Category.find_by(id: params[:id])
    if @category
      render :show
    else
    end
  end

end
