class StaticController < ApplicationController
  
  def index
  end
  
  def archive
    @posts = Post.published
  end
  
  def about
    @posts = Post.published
  end

end
