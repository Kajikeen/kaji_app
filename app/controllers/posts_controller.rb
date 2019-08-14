class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @id = params[:id]
    @post = Post.find_by(id: params[:id])
  end

  def new
  end

  def create
    redirect_to("/posts/index")
    @post = Post.new(content: params[:content])
    @post.save
  end
end
