class RestaurantPizzasController < ApplicationController

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_error

    def create
        restaurant_pizzas = RestaurantPizza.create!(resPiz_params)
        pizza = restaurant_pizzas.pizza
        render json: pizza
    end

    private

    def resPiz_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end

    def render_unprocessable_entity_error(invalid)
       render json: {errors: invalid.record.errors}, status: :unprocessable_entity
    end
end
