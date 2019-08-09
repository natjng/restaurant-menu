class RestaurantsController < ApplicationController
    def show
        @restaurant = Restaurant.find_by(id: params[:id])
    end
end
