require "rails_helper"
RSpec.describe Item, type: :model do
    describe "validations" do
        it { should validate_presence_of(:name) }
        it { should validate_presence_of(:price) }
        it { should validate_presence_of(:description) }
        it { should validate_presence_of(:image_url) }
    end

    describe "associations" do
        it { should belong_to(:category) }
    end
end
