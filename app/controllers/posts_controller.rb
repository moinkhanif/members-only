class PostsController < ApplicationController
  before_action :authenticate_member!, only: [:new, :create]

  def new
    @post = current_member.posts.build
  end
  
  def create
    @post = current_member.posts.build(post_params)
    @post.save
    redirect_to root_path
  end

  def index
    @posts = Post.all
    if current_member
      @post = current_member.posts.build
    end
  end

  def post_params
    params.require(:post).permit(:body)
  end
end
