class RestaurantsController < ApplicationController
    def show
        @restaurant = Restaurant.find_by(id: params[:id])
    end

    def new
        @restaurant = Restaurant.new
    end

    def edit
        @restaurant = Restaurant.find_by(id: params[:id])
    end
end
