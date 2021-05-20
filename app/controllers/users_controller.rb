class UsersController < ApplicationController
    #before_action :require_login 
    #skip_before_action :require_login, only:[:new, :create]

    def show
        @user = User.find_by_id(session[:user_id]) 
    end 

    def new 
        @user = User.new 
    end 

    def create 
       @user = User.create(user_params)
       if @user.save
          redirect_to '/login'
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
       params.require(:user).permit(:email, :password)
    end 

   def require_login
       return head(:forbidden) unless session.include? :user_id 
   end 

end
