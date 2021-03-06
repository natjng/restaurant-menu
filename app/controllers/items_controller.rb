class ItemsController < ApplicationController
    before_action :set_item, only: [:show, :edit, :update, :destroy]

    def index
        if params[:menu_id]
            @menu = Menu.find_by(id: params[:menu_id])
            if @menu.nil?
                redirect_to menus_path, alert: "Menu not found."
            elsif @menu.restaurant.user != current_user
                redirect_to menus_path, alert: "😢It looks like you don't have access to this page."
            else
                @items = @menu.items
            end
        else
            @items = current_user.items
        end
    end

    def show
        if params[:menu_id] && !Menu.exists?(params[:menu_id])
            redirect_to menus_path, alert: "Menu not found."
        elsif params[:menu_id] && Menu.exists?(params[:menu_id])
            @menu = Menu.find_by(id: params[:menu_id])
            @item = @menu.items.find_by(id: params[:id])
            if @item.nil?
                redirect_to menu_items_path(@menu), alert: "Item not found."
            end
        else
            item_dne_or_not_users
        end
    end

    def new
        if params[:menu_id] && !Menu.exists?(params[:menu_id])
            redirect_to menus_path, alert: "Menu not found."
        else
            @item = Item.new(menu_id: params[:menu_id])
        end
    end

    def create
        @item = Item.new(item_params)
        if @item.save
            redirect_to @item
        else
            render :new
        end
    end

    def edit
        item_dne_or_not_users
    end

    def update
        if @item.update(item_params)
            redirect_to @item
        else
            render :edit
        end
    end

    def destroy
        @item.destroy
        redirect_to items_path
    end

    def no_price
        @items = Item.no_price(item_ids)
    end

    def recently_updated
        @items = Item.recently_updated(item_ids).limit(10)
    end

    private

    def set_item
        @item = Item.find_by(id: params[:id])
    end

    def item_params
        params.require(:item).permit(:name, :description, :price, :image, :menu_id, :category_name)
    end

    def item_dne_or_not_users
        if @item.nil?
            redirect_to items_path, alert: "Item not found."
        elsif @item.menu.restaurant.user != current_user
            redirect_to items_path, alert: "😢It looks like you don't have access to this page."
        end
    end

    def item_ids
        current_user.items.map{|item| item.id}
    end

end
