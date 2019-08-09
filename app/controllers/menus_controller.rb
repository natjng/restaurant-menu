class MenusController < ApplicationController
    before_action :set_menu, only: [:show, :edit, :update]

    def show
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

    private

    def set_menu
        @menu = Menu.find_by(id: params[:id])
    end

    def menu_params
        params.require(:menu).permit(:name, :description, :restaurant_id)
    end
end
