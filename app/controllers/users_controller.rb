class UsersController < ApplicationController
    helper_mehtod :logged_in?, :current_user

    def new 
        if logged_in?
            redirect_to sighting_path(current_user)
        else
            @user = User.new
        end 
    end 

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.user_id
            redirect_to user_sighting_path(@user)
        else 
            render :signup
        end 
    end 

    def show 
        @user = current_user
        if logged_in? 
            redirect_to '/users/show'
        else
            flash[:danger] = "You have to be logged in to view this."
        end 
    end 

    private

    def user_params 
        params.require(:user).permit(:user_name, :first_name, :last_name, :email, :password)
    end 

    def auth 
        request.env['omniauth.auth']
    end
end 