module SessionHelper 

    def create_with_password(user)
        if @user = User.find_or_create_by(email: user.email)
             authenticated = @user.try(:authenticate, user: user.password)
              return head(:forbidden) unless authenticated
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else 
            redirect_to '/login', :notice => 'Cannot find the user details entered. Please re-enter correct details, or register a new user.'
        end 
    end 


    def create_with_uid(user)
      @user = User.find_or_create_by(uid: user.uid) do |u|
        u.email = auth[:info][:email]  
      end

      session[:user_id] = @user.id
      redirect_to user_path(@user)
    end 

    def auth
        request.env['omniauth.auth']
    end 

end 

