class Api::CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render :info
    else
    end
  end

  def edit
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :recipe_id, :author_id)
  end

end