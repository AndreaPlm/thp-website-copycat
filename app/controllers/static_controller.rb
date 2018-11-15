class StaticController < ApplicationController
  def send_email
    Mailer.new.send_newsletters
  end

end
