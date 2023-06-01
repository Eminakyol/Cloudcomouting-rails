class ApplicationController < ActionController::API

    def not_found
        render json: { data: "404 Not Found" }, status: :not_found
    end
end
