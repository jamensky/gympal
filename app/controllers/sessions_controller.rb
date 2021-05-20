class SessionsController < ApplicationController
    def new 
    end 

    def create 
        @user = User.find_by(email: params[:email])
        if @user
             authenticated = @user.try(:authenticate, params[:password])
              return head(:forbidden) unless authenticated
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else 
            redirect_to '/login', :notice => 'Cannot find the user'
        end 
    end 


    def destroy 
       session[:user_id] = nil
       redirect_to '/login', notice: 'You have been logged out successfully'
    end 
 end 