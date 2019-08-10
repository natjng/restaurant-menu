class ItemsController < ApplicationController
    before_action :set_item, only: [:show, :edit, :update]

    def index
        if params[:menu_id]
            @menu = Menu.find_by(id: params[:menu_id])
            if @menu.nil?
                redirect_to menus_path, alert: "Menu not found."
            else
                @items = @menu.items
            end
        else
            @items = Item.all
        end
    end

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
