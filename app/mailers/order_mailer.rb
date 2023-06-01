class OrderMailer < ApplicationMailer

    def notify_on_new_order(order_params, items, total_price, email_to)
        @order = order_params
        @items = items
        @total_price = total_price
        mail(from: ENV['GMAIL_ADDRESS'], to: email_to, subject: "New Order Received")
    end
end
