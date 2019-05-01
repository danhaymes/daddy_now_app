class Api::PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!, except: [:index, :show]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all.order('created_at desc')
    render 'index.json.jbuilder'
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @posts = Post.all.order('created_at desc')
  end

  # GET /posts/new
  def new
    @post = current_user.posts.build
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
      if post.persisted? 
        render json: {messages: 'Post created', success: true},
        status: :created
      else
        render json:{messages: post.errors.full_messages, success: false}, status: :bad_request
      end
      

    # @post = Post.new(post_params)
    # # current_user.posts.build(post_params)

    # respond_to do |format|
    #   if @post.save
    #     format.html { redirect_to @post, notice: 'post was successfully created.' }
    #     format.json { render :show, status: :created, location: @post }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @post.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])

    end

    def post
      Post.create(post_params)
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.permit(
        :user_id, 
        :post )
      # .merge(user_id: current_user.id)
    end

end
