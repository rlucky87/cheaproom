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
room7 = Room.create!(type_of_room: 'simple', capacity: '1', price: '88€', hotel: hotel3, image: 'room7-hotel3-simple.jpg')
room8 = Room.create!(type_of_room: 'double', capacity: '2', price: '99€', hotel: hotel3, image: 'room8-hotel3-double.jpg')
room9 = Room.create!(type_of_room: 'suite', capacity: '4', price: '350€', hotel: hotel3, image: 'room9-hotel3-suite.jpg')
room10 = Room.create!(type_of_room: 'simple', capacity: '1', price: '58€', hotel: hotel4, image: 'room10-hotel4-simple.jpg')
room11 = Room.create!(type_of_room: 'double', capacity: '2', price: '69€', hotel: hotel4, image: 'room11-hotel4-double.jpg')
room12 = Room.create!(type_of_room: 'suite', capacity: '4', price: '150€', hotel: hotel4, image: 'room12-hotel4-suite.jpeg')
room13 = Room.create!(type_of_room: 'simple', capacity: '1', price: '98€', hotel: hotel5, image: 'room13-hotel5-simple.jpg')
room14 = Room.create!(type_of_room: 'double', capacity: '2', price: '119€', hotel: hotel5, image: 'room14-hotel5-double.jpg')
room15 = Room.create!(type_of_room: 'suite', capacity: '4', price: '220€', hotel: hotel5, image: 'room15-hotel5-suite.jpg')

room16 = Room.create!(type_of_room: 'simple', capacity: '1', price: '75€', hotel: hotel6, image: 'room16-hotel6-simple.jpg')
room17 = Room.create!(type_of_room: 'double', capacity: '2', price: '91€', hotel: hotel6, image: 'room17-hotel6-double.jpg')
room18 = Room.create!(type_of_room: 'suite', capacity: '4', price: '210€', hotel: hotel6, image: 'room18-hotel6-suite.jpg')
room19 = Room.create!(type_of_room: 'simple', capacity: '1', price: '76€', hotel: hotel7, image: 'room19-hotel7-simple.jpeg')
room20 = Room.create!(type_of_room: 'double', capacity: '2', price: '85€', hotel: hotel7, image: 'room20-hotel7-double.jpeg')
room21 = Room.create!(type_of_room: 'suite', capacity: '4', price: '550€', hotel: hotel7, image: 'room21-hotel7-suite.jpg')
room22 = Room.create!(type_of_room: 'simple', capacity: '1', price: '58€', hotel: hotel8, image: 'room22-hotel8-simple.jpg')
room23 = Room.create!(type_of_room: 'double', capacity: '2', price: '69€', hotel: hotel8, image: 'room23-hotel8-double.jpg')
room24 = Room.create!(type_of_room: 'suite', capacity: '4', price: '150€', hotel: hotel8, image: 'room24-hotel8-suite.jpg')
room25 = Room.create!(type_of_room: 'simple', capacity: '1', price: '98€', hotel: hotel9, image: 'room25-hotel9-simple.jpg')
room26 = Room.create!(type_of_room: 'double', capacity: '2', price: '169€', hotel: hotel9, image: 'room26-hotel9-double.jpg')
room27 = Room.create!(type_of_room: 'suite', capacity: '4', price: '250€', hotel: hotel9, image: 'room27-hotel9-suite.jpeg')
room28 = Room.create!(type_of_room: 'simple', capacity: '1', price: '68€', hotel: hotel10, image: 'room28-hotel10-simple.jpg')
room29 = Room.create!(type_of_room: 'double', capacity: '2', price: '169€', hotel: hotel10, image: 'room29-hotel10-double.jpg')
room30 = Room.create!(type_of_room: 'suite', capacity: '4', price: '290€', hotel: hotel10, image: 'room30-hotel10-suite.jpg')

room31 = Room.create!(type_of_room: 'simple', capacity: '1', price: '72€', hotel: hotel11, image: 'room31-hotel11-simple.jpg')
room32 = Room.create!(type_of_room: 'double', capacity: '2', price: '92€', hotel: hotel11, image: 'room32-hotel11-double.jpg')
room33 = Room.create!(type_of_room: 'suite', capacity: '4', price: '212€', hotel: hotel11, image: 'room33-hotel11-suite.jpg')
room34 = Room.create!(type_of_room: 'simple', capacity: '1', price: '73€', hotel: hotel12, image: 'room34-hotel12-simple.jpeg')
room35 = Room.create!(type_of_room: 'double', capacity: '2', price: '83€', hotel: hotel12, image: 'room35-hotel12-double.jpeg')
room36 = Room.create!(type_of_room: 'suite', capacity: '4', price: '350€', hotel: hotel12, image: 'room36-hotel12-suite.jpg')
room37 = Room.create!(type_of_room: 'simple', capacity: '1', price: '54€', hotel: hotel13, image: 'room37-hotel13-simple.jpg')
room38 = Room.create!(type_of_room: 'double', capacity: '2', price: '64€', hotel: hotel13, image: 'room38-hotel13-double.jpeg')
room39 = Room.create!(type_of_room: 'suite', capacity: '4', price: '154€', hotel: hotel13, image: 'room39-hotel13-suite.jpg')
room40 = Room.create!(type_of_room: 'simple', capacity: '1', price: '95€', hotel: hotel14, image: 'room40-hotel14-simple.jpg')
room41 = Room.create!(type_of_room: 'double', capacity: '2', price: '165€', hotel: hotel14, image: 'room41-hotel14-double.jpg')
room42 = Room.create!(type_of_room: 'suite', capacity: '4', price: '255€', hotel: hotel14, image: 'room42-hotel14-suite.jpeg')
room43 = Room.create!(type_of_room: 'simple', capacity: '1', price: '66€', hotel: hotel15, image: 'room43-hotel15-simple.jpg')
room44 = Room.create!(type_of_room: 'double', capacity: '2', price: '166€', hotel: hotel15, image: 'room44-hotel15-double.jpg')
room45 = Room.create!(type_of_room: 'suite', capacity: '4', price: '296€', hotel: hotel15, image: 'room45-hotel15-suite.jpg')

puts 'Creating bookings...'


