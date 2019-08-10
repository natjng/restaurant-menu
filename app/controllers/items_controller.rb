class ItemsController < ApplicationController
    before_action :set_item, only: [:show, :edit, :update]

    def show
    end

    private

    def set_item
        @item = Item.find_by(id: params[:id])
    end

end
