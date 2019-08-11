class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

    def show
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
    end

    def update
        if @restaurant.update(restaurant_params)
            redirect_to @restaurant
        else
            render :edit
        end
    end

    def destroy
        @restaurant.destroy
        redirect_to restaurants_path
    end

    def address_like
    end

    private

    def set_restaurant
        @restaurant = Restaurant.find_by(id: params[:id])
    end

    def restaurant_params
        params.require(:restaurant).permit!
    end
end
