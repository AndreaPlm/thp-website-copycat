# Define parameters
nb_students = 2
nb_towns = 2
nb_companies = 2


# Create clients "student" town company
nb_students.times do |i|
  c = Client.create(
    email: "email_#{i+1}@gmail.com",
    client_type: "student"
    )
end

nb_towns.times do |i|
  c = Client.create(
    email: "email_#{nb_students+i+1}@gmail.com",
    client_type: "town"
    )
end

nb_companies.times do |i|
  c = Client.create(
    email: "email_#{nb_students+nb_towns+i+1}@gmail.com",
    client_type: "company"
    )
end
