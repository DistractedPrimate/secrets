class PasswordResetsController < ApplicationController
    
    def new
    end

    def create
        @user = User.find_by(email: params[:email])
        redirect_to root_path, notice: "This feature has not been completed yet"
    end

end