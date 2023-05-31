class OrdersController < ApplicationController

    def place_order
        OrderMailer.notify_on_new_order(order_params).deliver_now
    end

    private
    def order_params
        params.require(:order).permit(:status, :name, :email, :phone, :address, items: [])
    end
end
