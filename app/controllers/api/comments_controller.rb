class Api::CommentsController < ApplicationController


  def create
    @post = Post.find_by(params[:post_id])  
    @comment = @post.comments.create(params[:comment]).permit(:name, :comment)

    redirect_to post_path(@post)
  end


end
