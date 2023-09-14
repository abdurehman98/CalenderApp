class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome_message.subject
  #
  def welcome_mail
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def invitee_mail
    
    @task = params[:task]
    address = @task.invites.first.emailaddress
    @url  = 'http://example.com/login'
    mail(to: address, subject: 'Invitee mail')
  end
end