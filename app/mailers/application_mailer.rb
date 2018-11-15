class ApplicationMailer < ActionMailer::Base
  default from: 'iamdavehopper@gmail.com'
  layout 'mailer'

  def newsletter_email(client)
    @client = client
    mail(to: @client.email, subject: 'Newsletter thp')
  end

  def subscribe_email(client)
    @client = client
    mail(to: @client.email, subject: 'Inscription newsletter thp')
  end

end
