class SessionsController < ApplicationController

    def omniauth
        @user = User.find_or_create_by(auth[:uid]) do |u|
           u.name = auth[:name]
           u.email = auth[:email]
        end 

        session[:user_id] = @user.id 
        redirect_to user_path(@user)
    end


    def create 
        @user = User.find_by(email: params[:email])

        if @user
             authenticated = @user.try(:authenticate, params[:password])
              return head(:forbidden) unless authenticated
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else   
            redirect_to '/login', :notice => 'Cannot find the user detals entered. Please renter details, or register a new user.'
        end 
        
    end 


    def destroy 
       session[:user_id] = nil
       redirect_to '/login', notice: 'You have been logged out successfully'
    end 

    def auth
        request.env['omniauth.auth']
      end
 end 