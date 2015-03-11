class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Welcome #{user.name}!"
  end

  def destroy
  	reset_session
  	flash[:notice] = "You have successfully logged out"
  	redirect_to root_path
  end

end
