module MenusHelper
    def menu_select(menu, item)
        if menu
            hidden_field_tag "item[menu_id]", item.menu_id
        else
            select_tag "item[menu_id]", options_from_collection_for_select(current_user.menus, :id, :name)
        end
    end
end
