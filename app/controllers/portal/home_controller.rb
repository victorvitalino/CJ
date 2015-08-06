module Portal
  class HomeController < ApplicationController
    
    def index
      @posts = Post.all.order("created_at DESC")
      @post  = Post.where(featured: true).first
    end
    
  end
end