class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])

  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params) # @post.valid? not work
      redirect_to post_path(@post)
    else
      render :edit #edit_post_path not working.
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
