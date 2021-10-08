class Api::CollectionsController < ApplicationController

  def show
    @collection = Collection.find_by(id: params[:id])
    if @collection
      render :show
    end
  end
  
end