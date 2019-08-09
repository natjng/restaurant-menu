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

end
