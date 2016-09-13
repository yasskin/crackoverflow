class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User added"
      redirect_to root_url
    else
      flash[:danger] = "Failed to save"
      redirect_to new_user_path
    end
  end

  def index

  end

private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
