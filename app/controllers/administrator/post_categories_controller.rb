module Administrator
  class PostCategoriesController < ApplicationController
    
    before_action :set_category, only: [:edit, :update, :destroy]

    def index
      @post_categories = PostCategory.unscoped.all
    end

    def new
      @post_category = PostCategory.new
    end

    def create
      @post_category = PostCategory.new(set_params)
      if @post_category.save
        flash[:success] = t :success
        redirect_to action: 'index'
      else
        render action: 'new'
      end

    end

    def edit
    end

    def update
      if @post_category.update(set_params)
        flash[:success] = t :success
        redirect_to action: 'index'
      else
        render action: 'edit'
      end
    end

    def destroy
      if @post_category.destroy
        flash[:success] = t :success
        redirect_to action: 'index'
      end
    end

    
    private

    def set_params
      params.require(:post_category).permit(:name, :description, :publish)
    end

    def set_category
      @post_category = PostCategory.unscoped.find(params[:id])
    end

  end
end