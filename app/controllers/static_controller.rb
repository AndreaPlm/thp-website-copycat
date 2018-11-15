class StaticController < ApplicationController

  def index
  end

  def students
  end

  def student_create
    client = Client.new
    client.email = params[:email]
    client.client_type = "student"
    @client = client.save
    ApplicationMailer.newsletter_email(Client.last).deliver
  end

  def lyon
  end

  def lyon_create
    client = Client.new
    client.email = params[:email]
    client.client_type = "town"
    client.save
    ApplicationMailer.newsletter_email(Client.last).deliver
  end

  def corp
  end

  def corp_create
    client = Client.new
    client.email = params[:email]
    client.client_type = "company"
    client.save
    ApplicationMailer.newsletter_email(Client.last).deliver
  end

end
