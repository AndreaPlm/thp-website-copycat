desc "This task is called by the Heroku scheduler add-on"

task :send_newsletters => :environment do
  puts "Sending newsletters..."
  Mailer.new.send_newsletters()
  puts "done."
end
