class OrdersController < ApplicationController

    def place_order
        items = Item.find(order_params[:products])
        total_price = items.map { |item| item.price }.sum
        OrderMailer.notify_on_new_order(order_params, items, total_price, order_params[:email]).deliver_now
        OrderMailer.notify_on_new_order(order_params, items, total_price, ENV['REASTAURANT_EMAIL']).deliver_now
        render json: { message: "Order Placed Successfully" }, status: 201
        rescue ActiveRecord::RecordNotFound => e
            render json: { message: e.message }, status: 404
        rescue => e
            render json: { message: e.message }, status: 406
    end

    private
    def order_params
        params.require(:order).permit(:name, :email, :phone, :address, products: [])
    end
end
