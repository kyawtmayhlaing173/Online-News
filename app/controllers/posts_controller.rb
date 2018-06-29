class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  #validates :user_id, presence: true

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
#  def create
#    @post = Post.new(post_params)
#    @post.User_id = current_user
##

#    respond_to do |format|
#      if @post.save
#        format.json { render :show, status: :created, location: @post }
#      else
#        format.html { render :new }
#        format.json { render json: @post.errors, status: :unprocessable_entity }
#      end
#    end
#  end

  def create
      #debugger

      @post = Post.new(post_params)
      @post.User_id = current_user.id
      #debugger
      #@post = current_user.Post.build(post_params)
      if @post.save
        flash[:success] = "Micropost created!"
        gravatar_id = @post.id
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
        debugger
        image_tag(gravatar_url, alt: post.title, class: "gravatar")
        render 'posts/show'
      else
        render 'static_pages/home'
      end
    end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
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
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :detail, :User_id)
    end
end
