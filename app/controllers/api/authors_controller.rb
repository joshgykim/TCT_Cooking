class Api::AuthorsController < ApplicationController
  
  def show
    @author = Author.find_by(id: params[:id])
    if @author
      render :show
    else
    end
  end

end