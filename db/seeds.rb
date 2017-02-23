# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = [
  {first_name: "James", last_name: "Fisher", email: "jim@jim.com", password: "1234567"},
  {first_name: "Dan", last_name: "Laughter", email: "dan@dan.com", password: "1234567"},
  {first_name: "Duarte", last_name: "Lucas", email: "duarte@duarte.com", password: "1245673"},
  {first_name: "Karelle", last_name: "Lepine", email: "karelle@karelle.com", password: "1234567"},
  {first_name: "Tom", last_name: "Waits", email: "tom@waits.com", password: "1234567"}
]

users.each do |user|
  User.create(user)
end


gigs = [
  {name: "White Strips", location: "Stripes pub", price: 50, seating_capacity: 100, description: "Blues duet", date: DateTime.strptime("28/02/2017 19:00", "%d/%m/%Y %H:%M")},
  {name: "The Alarmed", location: "The Arena", price: 30, seating_capacity: 200, description: "Indie Rock", date: DateTime.strptime("12/03/2017 19:00", "%d/%m/%Y %H:%M")},
  {name: "Lewgoonies", location: "Beta-i", price: 40, seating_capacity: 300, description: "French House",  date: DateTime.strptime("20/04/2017 19:00", "%d/%m/%Y %H:%M")},
  {name: "Nerdvana", location: "The venue", price: 60, seating_capacity: 400, description: "Code Grunge", date: DateTime.strptime("19/04/2017 20:00", "%d/%m/%Y %H:%M")},
  {name: "Sultangs of Ping", location: "The Crunch", price: 70, seating_capacity: 500, description: "Funny Punk", date: DateTime.strptime("30/10/2017 19:00", "%d/%m/%Y %H:%M")}

]

gigs.each do |gig|
  Gig.create(gig)
end
