class UsersController < ApplicationController
    before_action :set_user, only: [:show, :destroy]



    def destroy
        session.destroy
        redirect_to '/'
    end

    private
    
    def set_user
        @user = current_user
    end
end
