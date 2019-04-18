class Api::PostsController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC")
    render 'index.html.erb'
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new.html.erb'
    end  
  end

  def show
    @post = Post.find_by(params[:id])
    render  'show.html.erb'
  end

  def edit
    @post = Post.find_by(params[:id])
  end

  def update
    @post = Post.find_by(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit.html.erb'    
    end   
  end

  private

  def post_params
    params.require(:post).permit(:post, :user_id)
  end

end
