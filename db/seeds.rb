# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Booking.destroy_all
Hotel.destroy_all
Room.destroy_all
Review.destroy_all
User.destroy_all

puts 'Creating users...'

user1 = User.create!(email:"Ruben@gmail.com", password:"123456")
user2 = User.create!(email:"Ingrid@gmail.com", password:"123456")
user3 = User.create!(email:"Ariana@gmail.com", password:"123456")
user4 = User.create!(email:"Twix@gmail.fr", password:"123456")

puts 'Creating hotels...'

hotel1 = Hotel.create!(name: 'CREOLIA', address: '14 Rue du Stade', city: 'Saint-Denis', country: '🇷🇪La Réunion', rating: 4)
hotel2 = Hotel.create!(name: 'BELLEPIERRE', address: '91 bis allée des Topazes', city: 'Saint-Denis', country: '🇷🇪La Réunion', rating: 3)
hotel3 = Hotel.create!(name: 'DINA MORGABINE', address: '1 Rue Issop Ravate', city: 'Saint-Denis', country: '🇷🇪La Réunion', rating: 5)
hotel4 = Hotel.create!(name: "LE ROBINET D'OR", address: '17 Rue Robert Blache', city: 'Paris', country: '🇫🇷France', rating: 5)
hotel5 = Hotel.create!(name: 'LOUVRE MONTANA', address: '12 Rue Saint-Roch', city: 'Paris', country: '🇫🇷France', rating: 3)
hotel6 = Hotel.create!(name: 'KORNER ETOILE', address: '133 Avenue de Villiers', city: 'Paris', country: '🇫🇷France', rating: 4)
hotel7 = Hotel.create!(name: 'MELIA', address: 'Rambla Méndez Núñez', city: 'Alicante', country: '🇪🇸España', rating: 5)
hotel8 = Hotel.create!(name: 'ALMIRANTE', address: 'Avenida de Niza 38', city: 'Alicante', country: '🇪🇸España', rating: 5)
hotel9 = Hotel.create!(name: 'TBA TIME SQUARE', address: '340 W 40th St', city: 'New York', country: '🇺🇸United States', rating: 4)
hotel10 = Hotel.create!(name: 'ALBAHIA', address: 'Carrer Sol Naixent 6', city: 'Alicante', country: '🇪🇸España', rating: 5)
hotel11 = Hotel.create!(name: 'GILD HALL', address: '15 Gold St', city: 'New York', country: '🇺🇸United States', rating: 3)
hotel12 = Hotel.create!(name: 'RIU PLAZA', address: '305 W 46th St', city: 'New York', country: '🇺🇸United States', rating: 5)
hotel13 = Hotel.create!(name: 'SAN LORENZO', address: 'Via dei Reti 25', city: 'Rome', country: '🇮🇹Itale', rating: 4)
hotel14 = Hotel.create!(name: 'LA BELLA ROMA', address: 'Via Rigoberto', city: 'Rome', country: '🇮🇹Italie', rating: 5)
hotel15 = Hotel.create!(name: 'DOLCE VITA', address: 'Via di pastore', city: 'Rome', country: '🇮🇹Italie', rating: 5)

puts 'Creating rooms...'

room1 = Room.create!(type_of_room: 'simple', capacity: '1', price: '80€', hotel: hotel1, image: 'room1-hotel1-simple.jpeg')
room2 = Room.create!(type_of_room: 'double', capacity: '2', price: '90€', hotel: hotel1, image: 'room2-hotel1-double.jpeg')
room3 = Room.create!(type_of_room: 'suite', capacity: '4', price: '200€', hotel: hotel1, image: 'room3-hotel1-suite.jpg')
room4 = Room.create!(type_of_room: 'simple', capacity: '1', price: '77€', hotel: hotel2, image: 'room4-hotel2-simple.jpg')
room5 = Room.create!(type_of_room: 'double', capacity: '2', price: '95€', hotel: hotel2, image: 'room5-hotel2-double.jpg')
room6 = Room.create!(type_of_room: 'suite', capacity: '4', price: '250€', hotel: hotel2, image: 'room6-hotel2-suite.jpg')
room7 = Room.create!(type_of_room: 'simple', capacity: '1', price: '88€', hotel: hotel3, image: 'room4-hotel2-simple.jpg')
room8 = Room.create!(type_of_room: 'double', capacity: '2', price: '99€', hotel: hotel3, image: 'room5-hotel2-double.jpg')
room9 = Room.create!(type_of_room: 'suite', capacity: '4', price: '350€', hotel: hotel3, image: 'room6-hotel2-suite.jpg')
