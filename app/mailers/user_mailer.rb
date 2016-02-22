class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user)
    @user = user
    @url  = 'http://trend-report.com/login' #adjust this before deployment
    mail(to: @user.email, subject: 'Welcome to Trend Report!')
  end
end
