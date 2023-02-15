
class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
        @posts = @user.posts
        @new_post = Post.new
    end
end