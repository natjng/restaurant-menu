module ItemsHelper
    def menu_id_field(menu)
        if @item.menu.nil?
            select_tag "item[menu_id]", options_from_collection_for_select(Menu.all, :id, :name)
        else
            hidden_field_tag "item[menu_id]", item.menu_id
        end
    end
end
