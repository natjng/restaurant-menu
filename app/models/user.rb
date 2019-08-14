class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true

    has_secure_password
    has_many :restaurants
    

    def self.find_or_create_by_omniauth(auth)
        self.find_or_create_by(email: auth['info']['email']) do |u|
            u.name = auth['info']['name']
            u.password = SecureRandom.hex
        end
    end

    def self.all_items(current_user)
        user_items = []
        current_user.restaurants.each do |r|
            r.menus.each do |menu|
                menu.items.each do |item|
                    user_items << item
                end
            end
        end
        user_items
    end

    def self.all_categories(current_user)
        user_categories = []
        current_user.restaurants.each do |r|
            r.menus.each do |menu|
                menu.categories.each do |category|
                    user_categories << category
                end
            end
        end
        user_categories.uniq
    end

    def self.all_menus(current_user)
        user_menus = []
        current_user.restaurants.each do |r|
            r.menus.each do |menu|
                user_menus << menu
            end
        end
        user_menus
    end

    def self.menu_ids(current_user)
        User.all_menus(current_user).map{|menu| menu.id}
    end

end