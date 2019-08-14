class MenusController < ApplicationController
    before_action :set_menu, only: [:show, :edit, :update, :destroy]

    def show
        menu_dne_or_not_users
    end

    def new
        @menu = Menu.new
    end

    def create
        @menu = Menu.new(menu_params)
        if @menu.save
            redirect_to @menu
        else
            render :new
        end
    end

    def edit
        menu_dne_or_not_users
    end

    def update
        if @menu.update(menu_params)
            redirect_to @menu
        else
            render :edit
        end
    end

    def destroy
        @menu.destroy
        redirect_to menus_path
    end

    private

    def set_menu
        @menu = Menu.find_by(id: params[:id])
    end

    def menu_params
        params.require(:menu).permit(:name, :description, :restaurant_id)
    end

    def menu_dne_or_not_users
        if @menu.nil?
            redirect_to menus_path, alert: "Menu not found."
        elsif @menu.restaurant.user != current_user
            redirect_to menus_path, alert: "😢It looks like you don't have access to this page."
        end
    end

end
