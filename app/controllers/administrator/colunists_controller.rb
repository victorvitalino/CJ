module Administrator
  class ColunistsController < ApplicationController
    before_action :set_colunist, only: [:edit, :update, :destroy]

    def index
        @colunists = Colunist.unscoped.all
    end

    def new
        @colunist = Colunist.new
    end

    def create
        @colunist = Colunist.new(set_params)

        if @colunist.save
            flash[:success] = t :success
            redirect_to action: 'index'
        else
            render action: 'new'
        end
    end

    def edit
    end

    def update
        if @colunist.update(set_params)
            flash[:success] = t :success
            redirect_to action: 'index'
        else
            render action: 'edit'
        end
    end

    def destroy
        if @colunist.destroy
            flash[:success] = t :success
            redirect_to action: 'index'
        end
    end

    private

    def set_params
        params.require(:colunist).permit(:title, :description, :author_id, :publish)
    end

    def set_colunist
        @colunist = Colunist.unscoped.find(params[:id])
    end
    
  end
end