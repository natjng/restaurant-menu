class MenusController < ApplicationController
    before_action :set_menu, only: [:show, :edit, :update]

    def show
    end

    private

    def set_menu
        @menu = Menu.find_by(id: params[:id])
    end
end
