class RegistrationController < ApplicationController
    def new
        @user = User.new
    end

    def create

        @user = User.new(user_params)

        if @user.save
            session[:user_id] = @user.id
            msg = "Thank You for Signing Up " + @user.username
            redirect_to root_path, notice: msg
        else
            render :new
        end            
    end

    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end
        