class ItemsController < ApplicationController
    def show
        @item = Item.find_by(id: params[:id])
    end
end
