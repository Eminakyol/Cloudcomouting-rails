class OrderMailer < ApplicationMailer

    def notify_on_new_order(order_params, items, total_price)
        @order = order_params
        @items = items
        @total_price = total_price
        mail(from: ENV['GMAIL_ADDRESS'], to: ENV['GMAIL_ADDRESS'], subject: "New Order Received")
        mail(from: ENV['GMAIL_ADDRESS'], to: @order[:email], subject: "New Order Received")
    end
end
