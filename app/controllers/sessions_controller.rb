class SessionsController < ApplicationController 
    helper_method :logged_in?, :current_user

    def new 
        if logged_in? 
            redirect_to user_show_path(current_user)
        end 
    end 

    def create 
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id 
            redirect_to user_show_path(user)
        else 
            flash[:danger] = "wrong email and/or password"
            render :signup
        end 
    end 

    def destroy
        if logged_in? 
            session.clear 
            redirect_to '/'
        else 
            render :login 
        end 
    end 
end 