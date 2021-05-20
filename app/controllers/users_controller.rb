class UsersController < ApplicationController
    #before_action :require_login 
    #skip_before_action :require_login, only:[:new, :create]

    def show
      #binding.pry 
        @user = User.find_by_id(session[:user_id]) 
    end 

    def new 
        @user = User.new 
    end 

    def create 
       if user = User.create(email: params['user']['email'], password: params['user']['password'])
          redirect_to '/login'
       else 
          render :new, :notice => 'incorrect details'
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
