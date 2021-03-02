class PostsController < ApplicationController
 http_basic_authenticate_with name: "gen37",
   password: "pass", only: :dashboard
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  
  def create
    @posts = Post.create(title: params[:title], image_url: params[:image_url], content: params[:content])
  end

  def dashboard
    @posts = Post.all
  end
end
