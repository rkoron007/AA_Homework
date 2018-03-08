class UserMailer < ApplicationMailer
  default from: 'App Academy <contact@appacademy.io>'

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/session/new'
    mail(to: user.username, subject: 'Welcome to CatRental.com')
  end
end
