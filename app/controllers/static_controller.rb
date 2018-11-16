class StaticController < ApplicationController

  def index
  end

  def students
  end

  def student_create
    client = Client.new
    client.email = params[:email]
    client.client_type = "student"
    client = client.save
    if Client.find_by(email: params[:email])
      ApplicationMailer.subscribe_email(Client.find_by(email: params[:email])).deliver
    end
  end

  def lyon
  end

  def lyon_create
    client = Client.new
    client.email = params[:email]
    client.client_type = "town"
    client = client.save
    if Client.find_by(email: params[:email])
      ApplicationMailer.subscribe_email(Client.find_by(email: params[:email])).deliver
    end
  end

  def corp
  end

  def corp_create
    client = Client.new
    client.email = params[:email]
    client.client_type = "company"
    client = client.save
    if Client.find_by(email: params[:email])
      ApplicationMailer.subscribe_email(Client.find_by(email: params[:email])).deliver
    end
  end

end
