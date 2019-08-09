class RestaurantsController < ApplicationController
    def show
        @restaurant = Restaurant.find_by(id: params[:id])
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = current_user.restaurants.build(restaurant_params)
        if @restaurant.save
            redirect_to @restaurant
        else
            render :new
        end
    end

    def edit
        @restaurant = Restaurant.find_by(id: params[:id])
    end

    def update
        @restaurant = Restaurant.find_by(id: params[:id])
        if @restaurant.update(restaurant_params)
            redirect_to @restaurant
        else
            render :edit
        end
    end

    private

    def restaurant_params
        params.require(:restaurant).permit!
    end
end
