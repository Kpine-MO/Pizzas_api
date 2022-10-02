class RestaurantsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_restaurant_not_found_error

    def index
        restaurants = Restaurant.all
        render json: restaurants
    end

    def show
        render json: find_restaurant
    end

    private

    def find_restaurant
        Restaurant.find(params[:id])
    end

    def render_restaurant_not_found_error
        render json: {error: 'Restaurant not found'}, status: :not_found
    end
end
