class SessionsController < ApplicationController
    def home
        if logged_in?
            @user = current_user
            render 'users/show'
        else
            render :home
        end
    end

    def new
    end

    def create 
        if auth
            @user = User.find_or_create_by_omniauth(auth)
            session[:user_id] = @user.id
            render 'users/show'
        else
            @user = User.find_by_email(params[:user][:email])
            if @user && @user.authenticate(params[:user][:password])
                session[:user_id] = @user.id
                render 'users/show'
            else
                render :new
            end
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