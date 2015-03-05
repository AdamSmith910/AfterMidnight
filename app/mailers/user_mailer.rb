class UserMailer < ApplicationMailer
	default from: "adamsmith910@gmail.com"

	def welcome_email(user)
    	@user = user
    	mail(to: @user.email, subject: "Welcome to AfterMidnight")
	end
end
