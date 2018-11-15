class TestController < ApplicationController
  def index
    Mailer.new.send_newsletters
  end
end
