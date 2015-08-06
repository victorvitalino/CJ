module Portal
  class PostsController < ApplicationController
    before_action :set_posts
    
    def index
    end

    def show
      @post = Post.friendly.find(params[:id])
    end

    private

    def set_posts
      @posts = Post.all
    end
  end
end
