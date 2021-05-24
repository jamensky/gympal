class ApplicationController < ActionController::Base
    #redirect_to controller: 'sessions', action: 'new' unless session[:name]
=begin   before_action :user_logged_in
    
    def user_logged_in
        binding.pry
        if session[:user_id]
            @user_logged_in = User.find(session[:user_id])
        end 
    end 
=end 
end
