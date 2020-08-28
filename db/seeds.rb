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

puts "Creating styles"
blackwork = Style.create!(name: 'Blackwork', description: 'Blackwork tattoos are characterized by mainly black ink (sometimes with hints of red or another accent color), very bold lines, and a powerful use of negative space. In the art world, negative space refers to everything around an image rather than the image itself. By utilizing negative space, an artist can create a powerful image without using many of the usual tricks, such as color or fine lines, to create movement and detail in a piece. Blackwork tattoos are often simple black lines or slightly ornate geometric patterns, but they can really be anything.')
american_traditional = Style.create!(name: 'American Traditional', description: 'Old school is the easiest tattoo style to identify. Visually, each artist will put their own stamp on an American Traditional piece. But there are some important guidelines to follow. Modern tattoo styles are distinct in their own way but open to interpretation. Fluidity suits some creative types, and they tend to work with modern styles. Old school artists love to find their creativity within an established aesthetic. It is a challenge, and it ties the artist back to the original taste-makers in American tattoo.')
surrealism = Style.create!(name: 'Surrealism', description: 'Surrealism is art and literature movement from the 2th century, which celebrates the unconscious mind, dreams and fantasy. Surrealists expressed the images of their imagination in anti-rational way. They believed the wide spread vision about reality is conflict between consciousness and dreams. Surrealists tried through art and creativity to open their minds to unaware thoughts and feelings, without using logic, out of standard thinking. Following the steps of the surrealism god fathers Salvador Dali, Joan Miro, Rene Magritte, Max Ernst and Man Ray, modern tattooists are fascinated with illogical world of this movement.')
traditional_japanese = Style.create!(name: 'Traditional Japanese', description: 'Dragons with snarling nostrils enveloped in flame, light pink cherry blossoms floating in the wind, Hannya’s leering and geisha’s smiling….these are the icons of Japanese tattooing, Irezumi. A tradition with ancient roots in human history, Japanese tattoos are some of the most revered artworks within the tattoo community. In this guide to Irezumi, we go into the chronicles of time to expound upon the history, imagery, legality, and artists who practice this incredibly important cultural art form.')
blackwork_japanese = Style.create!(name: 'Blackwork Japanese', description: 'The creater of this unusual combination is an italian tattoo artist Lupo Horiokami. While there are several different sects of neo-Japanese style, today’s versions often find themselves soaked in bold, vivid color. This is partially what sets Horiokami’s work apart from other artists. Crawling with spirits, ghouls, and a whole host of seemingly sadistic creatures, his work is largely black and grey with an emphasis on negative space.')
realism = Style.create!(name: 'Realism', description: 'It is an awe inspiring thing when an artist creates a 3D work of art on something 2D, like a canvas, a piece of paper, or skin. After years and years of devotion, motivation, hard work, and tons of talent, tattooists who work within the realm of hyperrealism are able to create unreal Realism tattoos. From an idea, to a stencil, and then finally onto skin, the amount of technique and time put into these works of art is astounding. In this article, we talk about the history, techniques, and styles of Realism tattoos, as well as the artists who have mastered them.')


puts "creating requests"
Request.create!(name: 'Jeff', address: 'france, Paris', body_part: 'arm', size: '10 inches', style: 'japanese', description: 'i would like it to b epic', user: user1, client: user2)
Request.create!(name: 'Aslan', address: 'Uruguay', body_part: 'leg', size: '12 inches', style: 'gothic', description: 'i would like it to look like a barcode', user: user1, client: user2)
Request.create!(name: 'Joesephineepoo', address: 'Narnia', body_part: 'shoulder', size: '1 inches', style: 'Narnian', description: 'i lost a dare', user: user1, client: user2)
Request.create!(name: 'The Dude', address: 'London', body_part: 'chest', size: 'whole body', style: 'geometric', description: 'i am the dude, this means i will become one with tattoo', user: user1, client: user2)
puts "creating bookings"
Booking.create!(date: DateTime.new(2001,2,3,4,5,6), price: 600, address: 'SE17 2NF, London', request: Request.first, user: user1, client: user2 )
Booking.create!(date: DateTime.new(2001,2,3,4,5,6), price: 600, address: 'SE5 0ED, London', request: Request.last, user: user1, client: user2 )
puts "Finished!"




