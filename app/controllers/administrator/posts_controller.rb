module Administrator
  class PostsController < ApplicationController
    before_action :set_post, only: [:edit, :show, :destroy, :update]
    def index
      @posts = Post.unscoped.all
    end

    def new
      @post = Post.new
    end

    def create
      @post = Post.new(set_params)
      @post.author_id = current_author.id
      if @post.save
        flash[:success] = t :success
        redirect_to action: 'index'
      else
        render action: 'new'
      end

    end

    def show
    end

    def edit
    end

    def update
      if @post.update(set_params)
        flash[:success] = t :success
        redirect_to action: 'index'
      else
        render action: 'edit'
      end
    end

    def destroy
      if @post.destroy
        flash[:success] = t :success
        redirect_to action: 'index'
      end
    end

    private

    def set_params
      params.require(:post).permit(:title, :content, :resume, :thumb, :publish ,:meta, :post_category_id, :featured, :special)
    end

    def set_post
      @post = Post.unscoped.friendly.find(params[:id])
    end

  end
end