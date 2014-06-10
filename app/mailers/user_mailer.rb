class UserMailer < ActionMailer::Base
  default from: "zack@"

  def welcome_mail(user)
    @user = user
    mail(:to => "#{user.first_name} <#{user.email}>",
      :subject => "I love you")
  end

  def profile_update(user)
    # mail(...)
  end
end
