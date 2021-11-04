class Api::RatingsController < ApplicationController

  def create
    @rating = Rating.find_by(user_id: current_user.id, recipe_id: params[:ratingData][:recipeId].to_i)
    
    if @rating
      @rating.update(rating: params[:ratingData][:rating].to_i)
    else
      @rating = Rating.new({
        user_id: current_user.id,
        recipe_id: params[:ratingData][:recipeId].to_i,
        rating: params[:ratingData][:rating].to_i
      })
      @rating.save
    end
    @recipe = Recipe.find_by(id: params[:ratingData][:recipeId].to_i)
    render "api/recipes/show"
  end

end