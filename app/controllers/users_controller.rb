class UsersController < ApplicationController
    def index 
        @users = User.all
    end 

    def show
        @user = User.find_by(params[:id]) 
    end 

    def new 
        @user = User.new 
    end 

    def create 
        binding.pry 
       user = User.create(name: params[:name])
       redirect_to post_path(user)
    end 

    def user_params
       #params
    end 
end
