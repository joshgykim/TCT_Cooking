class Api::CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render :info
    else
    end
  end

  def update
    @comment = Comment.find_by(id: params[:id])
    debugger
    if @comment && @comment.update(comment_params)
      render :info
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :recipe_id, :author_id)
  end

end