class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @post = current_user.posts.build
  end
  
  def create
    @post = current_user.posts.build(post_params)
    @post.save
    redirect_to 'new'

  end

  def index
  end

  def post_params
    params.require(:post).permit(:body)
  end
end
