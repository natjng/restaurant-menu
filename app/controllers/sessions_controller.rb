class SessionsController < ApplicationController
    def home

    end

    def create 
        @user = User.find_or_create_by(id: auth['uid']) do |u|
            u.username = auth['info']['name']
            u.email = auth['info']['email']
        end
        sessions[:user_id] = @user.id
        render :home
    end

    private

    def auth
        request.env['omniauth.auth']
    end

end