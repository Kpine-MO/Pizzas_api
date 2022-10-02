class RestaurantPizzasController < ApplicationController

    def create
        restaurant_pizzas = RestaurantPizza.create(resPiz_params)
        pizza = restaurant_pizzas.pizza
        render json: pizza
    end

    private

    def resPiz_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end
end
