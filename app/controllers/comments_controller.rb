class CommentsController < ApplicationController
  def create
  	@post = Post.find(params[:post_id])
  	@comment = Comment.new
  	@comment.text = params[:comment][:text]
  	@comment.post_id = @post.id
  	@comment.save

  	redirect_to @post
  end

  def destroy
  end

  private

  def comment_params
  	params.require(:comment).permit(:text)
  end
end
