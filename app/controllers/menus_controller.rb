class MenusController < ApplicationController
    def show
        @menu = Menu.find_by(id: params[:id])
    end
end
