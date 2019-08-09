class SessionsController < ApplicationController
    def home
    end

    def new
    end

    def create 
        @user = User.find_by_email(params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])
        # logging in w/omniauth fb
        # @user = User.find_or_create_by(id: auth['uid']) do |u|
        #     u.name = auth['info']['name']
        #     u.email = auth['info']['email']
        # end
            session[:user_id] = @user.id
            render 'users/show'
        else
            render :new
        end
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