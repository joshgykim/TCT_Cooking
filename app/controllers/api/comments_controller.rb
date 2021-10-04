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
    if @comment && @comment.update(comment_params)
      render :info
    else
    end
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :recipe_id, :author_id)
  end

end