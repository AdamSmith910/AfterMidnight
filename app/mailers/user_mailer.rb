class UserMailer < ApplicationMailer
	default from: "adamsmith910@aol.com"

	def welcome_email(user)
    	@user = user
    	mail(to: @user.email, subject: "Welcome to AfterMidnight")
	end
end
