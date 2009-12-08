class AdminController < ApplicationController
  before_filter :login_required
  
  def index
    @posts = Post.all
  end
  
  def posts
    @posts = Post.all
  end
end
