class SessionsController < ApplicationController
    def new 
    end 

    def create 
        binding.pry
        user = User.find_by(email: params[:email])

        if user
            authenticated = user.try(:authenticate, params[:password])
              return head(:forbidden) unless authenticated
            session[:user_id] = user.id
            redirect_to user_path(user)
        else 
            'non existent user, create a new one'
        end 
    end 
 end 