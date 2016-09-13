class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.where(:name => params[:name].downcase).first
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:is_admin] = user.admin
      flash[:alert] = "you logged in"
      redirect_to root_url
    else
      flash[:danger] = "you screwed up"
      render :new
    end
  end

  def destroy
    session[:admin] = nil
    session[:user_id] = nil
    redirect_to root_url
  end

  private
  def session_params
    params.require(:user).permit(:name, :password)
  end
end
