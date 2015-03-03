class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.welcome_email(@user).deliver_now
      flash[:success] = "User created"
      redirect_to root_path
    else
      flash[:alert] = "Failed to create new user"
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to user_path(@user)
    else
      flash.now[:error] = @user.errors.full_messages.first
      render "edit"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
  	params.require(:signup).permit(:email,
                                   :password,
                                   :password_confirmation)
  end
end
