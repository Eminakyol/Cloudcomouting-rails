class OrderMailer < ApplicationMailer

    def notify_on_new_order(order_params)
        @order = order_params
        mail(from: ENV['GMAIL_ADDRESS'], to: ENV['GMAIL_ADDRESS'], subject: "New Order Received")
        mail(from: ENV['GMAIL_ADDRESS'], to: @order[:email], subject: "New Order Received")
    end
end
