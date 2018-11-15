class Mailer
    def initialize()
    end

    def send_newsletters()

      Client.all.each do |client|
        ApplicationMailer.newsletter_email(client).deliver
        puts "Mail was sent to #{client.email}"
      end
      puts 'All mail was sent'

    end

end
