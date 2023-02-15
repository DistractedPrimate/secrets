class PostsController < ApplicationController

    def create

        puts params
        @post = Post.new(post_params)
        user = User.find(@post[:user_id])

        if @post.save
            msg = "Thank You for Sending a Secret "
            redirect_to user, notice: msg
        else
            msg = "Secret Failed to send"
            redirect_to user, notice: msg
        end            
    end

    def post_params
        params.require(:post).permit(:user_id, :content, :pinned)
    end
end
        