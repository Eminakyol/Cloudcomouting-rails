require "rails_helper"
RSpec.describe OrderMailer, type: :mailer do
    describe '#notify_on_new_order' do
        let(:order_params) do
            {
                name: 'John Doe',
                email: 'john@example.com',
                phone: '123456789',
                address: '123 Main St'
            }
        end
        let(:items) do
            [
                Item.new(name: 'Item 1', price: 10),
                Item.new(name: 'Item 2', price: 15)
            ]
        end
        let(:total_price) { items.sum(&:price) }

        it 'sends two emails' do
            expect do
                OrderMailer.notify_on_new_order(order_params, items, total_price, order_params[:email]).deliver_now
            end.to change { ActionMailer::Base.deliveries.size }.by(1)

            expect(ActionMailer::Base.deliveries.first.subject).to eq('New Order Received')
            expect(ActionMailer::Base.deliveries.first.from).to eq([ENV['GMAIL_ADDRESS']])
            expect(ActionMailer::Base.deliveries.first.to).to eq([order_params[:email]])
        end
    end
end
