class SessionsController < ApplicationController
    def home
        # if session[:user_id]
        #     @user = User.find_by(id: session[:user_id])
        # end
    end

    def new
        @user = User.new
    end

    def create 
        @user = User.find_or_create_by(id: auth['uid']) do |u|
            u.name = auth['info']['name']
            u.email = auth['info']['email']
        end
        session[:user_id] = @user.id
        render 'users/show'
    end

    def destroy
        session.destroy
        redirect_to '/'
    end

    private

    def auth
        request.env['omniauth.auth']
    end

end