require 'gmail'
require 'json'

# encoding: utf-8

class Mailer
    def initialize()
    end

    def spammer()

        gmail = Gmail.connect(ENV['ID'], ENV['PASS'])
        User.each do | key, value |
            gmail.deliver do
                to value
                subject 'thp-copycat-test'
                html_part do
                    content_type 'text/html; charset=UTF-8'
                    body "Bonjour"
                end
            end
            puts "Mail was sent to #{value}"
        end
        puts 'All mail was sent'
        puts 'Gmail will logout'
        gmail.logout
        puts 'Done'
    end

    def test_mail_sending()
            hash = { "MAIL" => "#{gets.chomp}" }
            puts "Ecris un nombre"
            number = gets.chomp.to_i
            gmail = Gmail.connect(ENV['ID'], ENV['PASS'])
            i = 1
            while i <= number
                hash.each do | key, value |
                    gmail.deliver do
                        to value
                        subject "TEST" + "#{i}"
                        html_part do
                            content_type 'text/html; charset=UTF-8'
                            body "JE SUIS UN TEST :)"
                        end
                    end
                    puts "Mail was sent to #{value}"
                end
                i += 1
            end
        puts 'All mail was sent'
        puts 'Gmail will logout'
        gmail.logout
        puts 'Done'
    end
end
