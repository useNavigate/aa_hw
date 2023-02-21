class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    @url = "99catsadmin@appacademy.io"
    mail(to: user.email, subject: "Welcome to My Awesome Site")
  end
end
