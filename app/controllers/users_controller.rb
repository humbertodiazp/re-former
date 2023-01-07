class UsersController < ApplicationController
    def create
        @user = User.new(user_params)
      
        if @user.save
          redirect_to new_user_path
        else
          render :new

        end

      end

      private
      # returns the hash containing the params we need
      # to create or update a post
      def user_params
        params.require(:users).permit(:username,:email,:password)
      end
    end




