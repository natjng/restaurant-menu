class ItemsController < ApplicationController
    before_action :set_item, only: [:show, :edit, :update, :destroy]

    def index
        if params[:menu_id]
            @menu = Menu.find_by(id: params[:menu_id])
            if @menu.nil?
                redirect_to menus_path, alert: "Menu not found."
            else
                @items = @menu.items
            end
        else
            @items = User.all_items(current_user)
        end
    end

    def show
        if params[:menu_id]
            @menu = Menu.find_by(id: params[:menu_id])
            @item = @menu.items.find_by(id: params[:id])
            if @item.nil?
                redirect_to menu_items_path(@menu), alert: "Item not found."
            end
        else
            @item = Item.find_by(id: params[:id])
            if @item.nil?
                redirect_to items_path, alert: "Item not found."
            end
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
        menus = User.menu_ids(current_user)
        @items = Item.users_no_price(menus)
    end

    def recently_updated
        menus = User.menu_ids(current_user)
        @items = Item.recently_updated(menus).limit(10)
    end

    private

    def set_item
        @item = Item.find_by(id: params[:id])
    end

    def item_params
        params.require(:item).permit(:name, :description, :price, :image, :menu_id, :category_name)
    end

end
