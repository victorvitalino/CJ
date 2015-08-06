module Portal
  class PostCategoriesController < ApplicationController
    
    def show
      @category = PostCategory.friendly.find(params[:id])
      @posts    = @category.posts
    end

  end
end