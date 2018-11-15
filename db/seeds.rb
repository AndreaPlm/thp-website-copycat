# Define parameters
nb_students = 50
nb_towns = 5
nb_companies = 10

Client.create(
  email: "potie.quentin@gmail.com",
  client_type: "student"
  )

Client.create(
  email: "iamdavehopper@gmail.com",
  client_type: "company"
  )

=begin

# Create clients "student" town company
nb_students.times do |i|
  c = Client.create(
    email: "email_#{i+1}",
    client_type: "student"
    )
end

nb_towns.times do |i|
  c = Client.create(
    email: "email_#{nb_students+i+1}",
    client_type: "town"
    )
end

nb_companies.times do |i|
  c = Client.create(
    email: "email_#{nb_students+nb_towns+i+1}",
    client_type: "company"
    )
end

Client.create(
  email: "email_2",
  client_type: "company"
  )

Client.create(
  email: "email_3",
  client_type: "school"
  )

Client.create(
  email: "email_3",
  client_type: "company"
  )

Client.create(
  email: "potie.quentin@gmail.com",
  client_type: "company"
  )

Client.create(
  email: "iamdavehopper@gmail.com",
  client_type: "student"
  )

=end
