class UsersController < ApplicationController
    before_action :set_user, only: [:show, :destroy]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to @user
        else
            render :new
        end
    end

    def show
    end

    def destroy
        session.destroy
        redirect_to '/'
    end

    private
    
    def set_user
        @user = current_user
    end

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end

end
