class UsersController < ApplicationController
    before_action :set_user, only: [:show, :destroy]


    private
    
    def set_user
        @user = current_user
    end
end
