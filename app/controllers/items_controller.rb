class ItemsController < ApplicationController

    def index
        @items = Item.all
    end

    def show
        @item = Item.find(params[:id])
    end

    def get_by_category
        @items = Item.where(category: params[:category])
    end

    def place_order
        OrderMailer.notify_on_new_order(order_params).deliver_now
    end

    private
    def order_params
        params.require(:order).permit(:items, :status, :name, :email, :phone, :address)
    end
end
