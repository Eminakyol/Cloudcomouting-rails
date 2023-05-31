class OrdersController < ApplicationController

    def place_order
        items = Item.find(order_params[:items])
        total_price = items.sum(:price)
        OrderMailer.notify_on_new_order(order_params, items, total_price).deliver_now
    end

    private
    def order_params
        params.require(:order).permit(:status, :name, :email, :phone, :address, items: [])
    end
end
