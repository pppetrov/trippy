class UsersController < ApplicationController

  def show
  end


  def new
    @user = User.new
  end

  def create
    User.create(user_params)
    flash[:notice] = "User Successfully Created"
    flash[:username] = user_params[:username]
    redirect_to sessions_path
  end

  private

  def user_params
    params
      .require(:user)
      .permit(:username, :email, :first_name, :first_name, :last_name, :password)
  end
  
end
