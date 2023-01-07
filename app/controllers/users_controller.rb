class UsersController < ApplicationController
    def create
        @user = User.new(username: params[:username], email: params[:email], password: params[:password])
      
        if @user.save
          redirect_to new_user_path
        else
        #   render :new, status: :unprocessable_entity

        end

      end

      private
      # returns the hash containing the params we need
      # to create or update a post
      def user_params
        params.require(:users).permit(:username,:email,:password)
      end
    end
    



