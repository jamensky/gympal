class UsersController < ApplicationController
    #before_action :require_login 
    #skip_before_action :require_login, only:[:new, :create]

    def show
      #binding.pry 
        @user = User.find_by(params[:id]) 
    end 

    def new 
        @user = User.new 
    end 

    def create 
       if user = User.create(user_params)
          redirect_to user_path(user)
       else 
          render :new 
       end 
    end 

    def edit 
        @user = User.find_by(session[:user_id])
    end

    def update
        
    end

    def user_params
       params.require(:user).permit(:name, :password, :password_confirmation)
    end 

   def require_login
       return head(:forbidden) unless session.include? :user_id 
   end 

end
