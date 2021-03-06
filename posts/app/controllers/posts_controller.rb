class PostsController < ApplicationController

def index
  @posts = Post.all
end

def show
  @post = Post.find(params[:id])
end

def new
  @post = Post.new
end

def create
  Post.create(post_params)
  redirect_to posts_path
end

# def edit
#   @post = Post.find(params[:id])
# end

private
  def post_params
    params.require(:post).permit(:author,:body)
  end

end
