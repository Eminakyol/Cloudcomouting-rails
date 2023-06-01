class CategoriesController < ApplicationController

    def index
        @categories = Category.all
        render :index, status: 200
    end

    def show
        @category = Category.find(params[:id])
        @items = @category.items
        render :show, status: 200
        rescue ActiveRecord::RecordNotFound => e
            render json: { message: e.message }, status: 404
    end
end
