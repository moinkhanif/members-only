class PostsController < ApplicationController
  before_action :authenticate_member!, only: %i[new create]

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
    @post = current_member.posts.build if current_member
  end

  def post_params
    params.require(:post).permit(:body)
  end
end
