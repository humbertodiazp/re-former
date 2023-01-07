class UsersController < ApplicationController 
  def new
    @user = User.new
  end

  def create
        @user = User.new(user_params)
      
        if @user.save
          redirect_to new_user_path
        else
          render :new

        end
      end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end


  private
  # returns the hash containing the params we need
  # to create or update a post
  def user_params
    params.require(:users).permit(:username,:email,:password)
  end
end






