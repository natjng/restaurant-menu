class ItemsController < ApplicationController
    before_action :set_item, only: [:show, :edit, :update]

    def show
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.new(item_params)
        if @item.save
            redirect_to @item
        else
            render :new
        end
    end

    def no_price
        render :no_price
    end

    private

    def set_item
        @item = Item.find_by(id: params[:id])
    end

    def item_params
        params.require(:item).permit(:name, :description, :price, :image, :menu_id, :category_id)
    end

end
