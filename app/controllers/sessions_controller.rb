class SessionsController < ApplicationController
  def create
  	user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    flash[:notice] = "Welcome #{user.name}"
    redirect_to root_url
  end

  def destroy
  	reset_session
  	flash[:notice] = "You have successfully logged out"
  	redirect_to root_path
  end

  private

  def invalid_login
  	flash[:error] = "Invalid login"
  	redirect_to root_path
  end

end
