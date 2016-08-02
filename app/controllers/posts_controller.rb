class PostsController < ApplicationController
# before_action :post_params only: [:create, :edit, :update, :show]
  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new

  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params )
      @post.save
      redirect_to @post
  end

  def edit

  end

  def update

  end

  def update

  end

  def destroy

  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end

    def find_posts
      # @post = Post.find(params[:id])
    end

end
