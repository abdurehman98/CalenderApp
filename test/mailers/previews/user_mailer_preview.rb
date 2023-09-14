# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/welcome_message
  def welcome_mail
    UserMailer.welcome_mail
  end

  def invitee_mail
    UserMailer.welcome_mail
  end
end
