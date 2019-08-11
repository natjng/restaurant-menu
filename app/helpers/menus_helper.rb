module MenusHelper
    def menu_select(menu, item)
        if menu
            menu.name
        else
            select_tag "item[menu_id]", options_from_collection_for_select(Menu.all, :id, :name)
        end
    end
end
