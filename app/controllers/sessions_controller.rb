class SessionsController < ApplicationController
    def new 
        user = User.find_by(email: params[:email])

        if user
            session[:user_id] = user.id
            redirect_to user_path(user)
        else 
            'non existent user, create a new one'
        end 
    end 
end 