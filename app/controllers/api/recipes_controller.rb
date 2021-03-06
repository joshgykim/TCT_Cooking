class Api::RecipesController < ApplicationController

  def index
    if params[:mode] == "Search"
      @recipes = Recipe.searchFor(params[:searchFor])
      @collections = Collection.searchFor(params[:searchFor])
      render :search
    else 
      @recipes = Recipe.selectRecipes(params[:mode])
      @collections = Collection.selectCollections(params[:mode])
      render :index 
    end
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    if @recipe
      render :show
    else
    end
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      render json: ["#{@recipe.title} saved"]
    else
      render json: ["something wrong"]
    end
  end

  private
  
  def recipe_params
    params.require(:recipe).permit(:title, :description, :yield, :time, :preparations, :image_url, :author_id)
  end

end