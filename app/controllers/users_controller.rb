class UsersController < ApplicationController

    private

    def user_params 
        params.require(:user).permit(:user_name, :first_name, :last_name, :email, :password)
    end 
end 