comment = @comment.update(params.require(:comment).permit(:body, :recipe_id, :author_id))
json.extract! comment, :id, :body, :created_at, :updated_at
json.commentor comment.commenter.username
json.commentorId comment.commenter.id