class OrderMailer < ApplicationMailer


    def notify_on_new_order(order_params)
        @order = order_params
        mail(to: ENV['GMAIL_ADRESS'], subject: "New Order Received")
        mail(to: @order[:email], subject: "New Order Received")
    end
end
