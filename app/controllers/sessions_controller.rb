class SessionsController < ApplicationController
  def create
  	authenticate_user(User.find_by(session_email))
  end

  def destroy
  	reset_session
  	flash[:notice] = "You have successfully logged out"
  	redirect_to root_path
  end

  private

  def authenticate_user(user)
  	if user && user.authenticate(session_password)
  		session[:user_id] = user.id
  		flash[:notice] = "Welcome back #{user.email}"
  		redirect_to root_path
  	else
  		invalid_login
  	end
  end

  def invalid_login
  	flash[:error] = "Invalid login"
  	redirect_to new_session_path
  end

  def session_email
  	params.require(:session).permit(:email)
  end

  def session_password
  	params.require(:session).permit(:password)[:password]
  end
end
