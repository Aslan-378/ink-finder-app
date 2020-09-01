# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning DB!"
Booking.destroy_all
Request.destroy_all
User.destroy_all
Style.destroy_all



puts "Creating users"
user1 = User.create!(email: 'm@me.com', password: '123456', first_name: 'Martin', last_name: 'Darras', artist: true, style: 'Gothic', price: 100, address: '10 Downing Street, London', city: "London", bio: "I am good at tattooing", instagram: 'Aslan4Days', nickname: "Mystix", experience: 3)
user2 = User.create!(email: 'd@me.com', password: '123456', first_name: 'Declan', last_name: 'Dec', artist: false)
user3 = User.create!(email: 'f@me.com', password: '123456', first_name: 'Fabrice', last_name: 'Aslan', artist: true, style: 'Angelic', price: 80, address: '40 Amhurst Road, London', city: "London", bio: "I am bad at tattooing", instagram: 'JoeyIsANipz', nickname: "Classio", experience: 5)
user4 = User.create!(email: 'g@me.com', password: '123456', first_name: 'Michel', last_name: 'Leroy', artist: true, style: 'Minimalist', price: 70, address: '108 Kingsland Road London', city: "London", bio: "Minimalist style for great render", instagram: '4Frodo', nickname: "Mowgli", experience: 10)
user5 = User.create!(email: 'h@me.com', password: '123456', first_name: 'Joe', last_name: 'Exotic', artist: true, style: 'Japanese', price: 70, address: '50 Oxford Street, London', city: "London", bio: "Really good japanese style", instagram: 'YouShallNotPass!', nickname: "Kingz",experience: 15)
user6 = User.create!(email: 'z@me.com', password: '123456', first_name: 'Sam', last_name: 'Exotic', artist: true, style: 'lazer', price: 90, address: '27 Cavendish Street, London', city: "London", bio: "Really good japanese style", instagram: 'FreakOut!', nickname: "Songs")
user7 = User.create!(email: 'p@me.com', password: '123456', first_name: 'Tim', last_name: 'Exotic', artist: true, style: 'BigCatz', price: 20, address: '48 Charlotte Street, London', city: "London", bio: "Really good style", instagram: 'FallBack!', nickname: "Helmz")
user8 = User.create!(email: 'q@me.com', password: '123456', first_name: 'Fred', last_name: 'Exotic', artist: true, style: 'Japanese', price: 40, address: 'London Fields, London', city: "London", bio: "Really wacky design", instagram: 'BloodHasBeenSpiltThisNight!', nickname: "Legolas")
user9 = User.create!(email: 'r@me.com', password: '123456', first_name: 'Ellie', last_name: 'Exotic', artist: true, style: 'Angelic', price: 1000, address: '17 Queens Road, London', city: "London", bio: "crazy stuuf i do", instagram: 'TheirTakingTheHobbitsToIsengard!', nickname: "Urukhai")
user10 = User.create!(email: 's@me.com', password: '123456', first_name: 'June', last_name: 'Exotic', artist: true, style: 'Cubez', price: 990, address: "26 New King's Road, London", city: "London", bio: "really excited about tattoooos", instagram: 'Gandaaaalf!', nickname: "Wizaard")




puts "creating requests"
Request.create!(name: 'Jeff', address: 'france, Paris', body_part: 'arm', size: '10 inches', style: 'japanese', description: 'i would like it to b epic', user: user1, client: user2)
Request.create!(name: 'Aslan', address: 'Uruguay', body_part: 'leg', size: '12 inches', style: 'gothic', description: 'i would like it to look like a barcode', user: user1, client: user2)
Request.create!(name: 'Joesephineepoo', address: 'Narnia', body_part: 'shoulder', size: '1 inches', style: 'Narnian', description: 'i lost a dare', user: user1, client: user2)
Request.create!(name: 'The Dude', address: 'London', body_part: 'chest', size: 'whole body', style: 'geometric', description: 'i am the dude, this means i will become one with tattoo', user: user1, client: user2)
puts "creating bookings"
Booking.create!(date: DateTime.new(2001,2,3,4,5,6), price: 600, address: 'SE17 2NF, London', request: Request.first, user: user1, client: user2 )
Booking.create!(date: DateTime.new(2002,2,3,4,5,6), price: 600, address: 'SE5 0ED, London', request: Request.last, user: user1, client: user2 )
Booking.create!(date: DateTime.new(2001,1,3,4,5,6), price: 600, address: 'SE17 2NF, London', request: Request.first, user: user1, client: user2 )
Booking.create!(date: DateTime.new(2003,2,3,3,5,6), price: 600, address: 'SE5 0ED, London', request: Request.last, user: user1, client: user2 )
Booking.create!(date: DateTime.new(2005,2,3,4,5,6), price: 600, address: 'SE17 2NF, London', request: Request.first, user: user1, client: user2 )
Booking.create!(date: DateTime.new(2001,2,3,4,2,6), price: 600, address: 'SE5 0ED, London', request: Request.last, user: user1, client: user2 )
puts "Finished!"




