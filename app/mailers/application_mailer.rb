class ApplicationMailer < ActionMailer::Base
  default from: 'iamdavehopper@gmail.com'
  layout 'mailer'

  def newsletter_email(client)
    @client = client
    mail(to: @client.email, subject: 'Email test copycat')
  end
end
