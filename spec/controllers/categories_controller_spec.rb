require "rails_helper"
RSpec.describe CategoriesController, type: :controller  do
    describe "GET #index" do
        it "returns a success response" do
            get :index, format: :json
            expect(response).to have_http_status(:ok)
        end
    end

    describe "GET #show" do
        context "when category exists" do
            let(:category) { Category.create(name: "test", image_url: "test") }

            it "returns a success response" do
                get :show, params: { id: category.id }, format: :json
                expect(response).to have_http_status(:ok)
            end
        end

        context "when category does not exist" do
            it "returns a not found response" do
                get :show, params: { id: 999 }, format: :json
                expect(response).to have_http_status(:not_found)
            end

            it "returns a JSON error message" do
                get :show, params: { id: 999 }, format: :json
                expect(response.body).to include("Couldn't find Category with 'id'=999")
            end
        end
    end
end
