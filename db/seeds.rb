# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Cleaning DB!"
Quiz.destroy_all
Booking.destroy_all
Request.destroy_all
Style.destroy_all
User.destroy_all


puts "Creating users"
user1 = User.create!(email: 'm@me.com', password: '123456', first_name: 'Martin', last_name: 'Darras', artist: true, style: 'Tribal', price: 100, address: '10 Downing Street, London', city: "London", bio: "I am good at tattooing", instagram: 'Aslan4Days', nickname: "Mystix", experience: 3)
user2 = User.create!(email: 'd@me.com', password: '123456', first_name: 'Declan', last_name: 'Dec', artist: false)
user3 = User.create!(email: 'f@me.com', password: '123456', first_name: 'Fabrice', last_name: 'Aslan', artist: true, style: 'illustration', price: 80, address: '40 Amhurst Road, London', city: "London", bio: "I am bad at tattooing", instagram: 'JoeyIsANipz', nickname: "Classio", experience: 5)
user4 = User.create!(email: 'g@me.com', password: '123456', first_name: 'Michel', last_name: 'Leroy', artist: true, style: 'Realism', price: 70, address: '108 Kingsland Road London', city: "London", bio: "Minimalist style for great render", instagram: '4Frodo', nickname: "Mowgli", experience: 10)
user5 = User.create!(email: 'h@me.com', password: '123456', first_name: 'Joe', last_name: 'Exotic', artist: true, style: 'Traditional Japanese', price: 70, address: '50 Oxford Street, London', city: "London", bio: "Really good japanese style", instagram: 'YouShallNotPass!', nickname: "Kingz",experience: 15)
user6 = User.create!(email: 'z@me.com', password: '123456', first_name: 'Sam', last_name: 'Exotic', artist: true, style: 'Realism', price: 90, address: '27 Cavendish Street, London', city: "London", bio: "Really good japanese style", instagram: 'FreakOut!', nickname: "Songs")
user7 = User.create!(email: 'p@me.com', password: '123456', first_name: 'Tim', last_name: 'Exotic', artist: true, style: 'Blackwork Japanese', price: 20, address: '48 Charlotte Street, London', city: "London", bio: "Really good style", instagram: 'FallBack!', nickname: "Helmz")
user8 = User.create!(email: 'q@me.com', password: '123456', first_name: 'Fred', last_name: 'Exotic', artist: true, style: 'Surrealism', price: 40, address: 'London Fields, London', city: "London", bio: "Really wacky design", instagram: 'BloodHasBeenSpiltThisNight!', nickname: "Legolas")
user9 = User.create!(email: 'r@me.com', password: '123456', first_name: 'Ellie', last_name: 'Exotic', artist: true, style: 'Blackwork', price: 1000, address: '17 Queens Road, London', city: "London", bio: "crazy stuuf i do", instagram: 'TheirTakingTheHobbitsToIsengard!', nickname: "Urukhai")
user10 = User.create!(email: 's@me.com', password: '123456', first_name: 'June', last_name: 'Exotic', artist: true, style: 'American Traditional', price: 990, address: "26 New King's Road, London", city: "London", bio: "really excited about tattoooos", instagram: 'Gandaaaalf!', nickname: "Wizaard")

puts "Creating styles"
blackwork_photo = URI.open('https://i.ibb.co/PNX9cYf/photo-1557130641-1b14718f096a.jpg')
blackwork = Style.new(name: 'Blackwork', description: 'Blackwork tattoos are characterized by mainly black ink (sometimes with hints of red or another accent color), very bold lines, and a powerful use of negative space. In the art world, negative space refers to everything around an image rather than the image itself. By utilizing negative space, an artist can create a powerful image without using many of the usual tricks, such as color or fine lines, to create movement and detail in a piece. Blackwork tattoos are often simple black lines or slightly ornate geometric patterns, but they can really be anything.')
blackwork.photo.attach(io: blackwork_photo, filename: 'blackwork.jpg', content_type: 'image/jpg')
blackwork.save

american_traditional_photo = URI.open('https://i.ibb.co/72W4hqJ/745d9f86bd14458578737da3cca32953.jpg')
american_traditional = Style.new(name: 'American Traditional', description: 'Old school is the easiest tattoo style to identify. Visually, each artist will put their own stamp on an American Traditional piece. But there are some important guidelines to follow. Modern tattoo styles are distinct in their own way but open to interpretation. Fluidity suits some creative types, and they tend to work with modern styles. Old school artists love to find their creativity within an established aesthetic. It is a challenge, and it ties the artist back to the original taste-makers in American tattoo.')
american_traditional.photo.attach(io: american_traditional_photo, filename: 'american_traditional.jpg', content_type: 'image/jpg')
american_traditional.save

japanese_blackwork_photo = URI.open('https://i.ibb.co/fxJ4jhs/20181108-d8-Zm-Dzmb-EWYM9a-Q.jpg')
japanese_blackwork= Style.new(name: 'Japanese Blackwork', description: 'The creator of this unusual combination is an Italian tattoo artist Lupo Horiokami. While there are several different sects of neo-Japanese style, today’s versions often find themselves soaked in bold, vivid color. This is partially what sets Horiokami’s work apart from other artists. Crawling with spirits, ghouls, and a whole host of seemingly sadistic creatures, his work is largely black and grey with an emphasis on negative space.')
japanese_blackwork.photo.attach(io: japanese_blackwork_photo, filename: 'japanese_blackwork.jpg', content_type: 'image/jpg')
japanese_blackwork.save

surrealism_photo = URI.open('https://i.ibb.co/ZXht5VQ/Screenshot-2020-08-31-at-6-06-46-pm.png')
surrealism = Style.new(name: 'Surrealism', description: 'Surrealism is art and literature movement from the 2th century, which celebrates the unconscious mind, dreams and fantasy. Surrealists expressed the images of their imagination in anti-rational way. They believed the wide spread vision about reality is conflict between consciousness and dreams. Surrealists tried through art and creativity to open their minds to unaware thoughts and feelings, without using logic, out of standard thinking. Following the steps of the surrealism god fathers Salvador Dali, Joan Miro, Rene Magritte, Max Ernst and Man Ray, modern tattooists are fascinated with illogical world of this movement.')
surrealism.photo.attach(io: surrealism_photo, filename: 'surrealism.jpg', content_type: 'image/png')
surrealism.save

japanese_traditional_photo = URI.open('https://i.ibb.co/7ygcpYX/ym7gau78ega21.jpg')
japanese_traditional = Style.new(name: 'Japanese Traditional', description: 'Dragons with snarling nostrils enveloped in flame, light pink cherry blossoms floating in the wind, Hannya’s leering and geisha’s smiling….these are the icons of Japanese tattooing, Irezumi. A tradition with ancient roots in human history, Japanese tattoos are some of the most revered artworks within the tattoo community. In this guide to Irezumi, we go into the chronicles of time to expound upon the history, imagery, legality, and artists who practice this incredibly important cultural art form.')
japanese_traditional.photo.attach(io: japanese_traditional_photo, filename: 'japanese_traditional.jpg', content_type: 'image/jpg')
japanese_traditional.save

realism_photo = URI.open('https://i.ibb.co/vhyYx0q/gorgeous-grey-Greek-mythology-realistic-tattoo-male-side-ribs.jpg')
realism = Style.new(name: 'Realism', description: 'It is an awe inspiring thing when an artist creates a 3D work of art on something 2D, like a canvas, a piece of paper, or skin. After years and years of devotion, motivation, hard work, and tons of talent, tattooists who work within the realm of hyperrealism are able to create unreal Realism tattoos. From an idea, to a stencil, and then finally onto skin, the amount of technique and time put into these works of art is astounding. In this article, we talk about the history, techniques, and styles of Realism tattoos, as well as the artists who have mastered them.')
realism.photo.attach(io: realism_photo, filename: 'realism.jpg', content_type: 'image/jpg')
realism.save

tribal_photo = URI.open('https://i.ibb.co/PjLJsn8/tribal-tattoos-19011731.jpg')
tribal = Style.new(name: 'Tribal', description: 'You may have come across many tattoos that have black inked lines with a unique design too. Well, these tattoos aren’t just some fancy unique design; they are tribal tattoos. Tribal tattoos are quite common nowadays among tattoo lovers as this not only gives them a way to showcase some fantastic art in their body but also helps them embrace their culture and heritage. Tribal tattoos have existed for hundreds of years, and have originated from many different tribes worldwide. Tribal tattoos are comparatively cheaper, as they often have straightforward designs; however, some tribal tattoos are a bit extensive as they include color as well. If you want to commemorate your decedent’s roots, you should get a tribal tattoo.')
tribal.photo.attach(io: tribal_photo, filename: 'tribal.jpg', content_type: 'tribal/jpg')
tribal.save

illustration_photo = URI.open('https://i.ibb.co/SQFcrKZ/67599848-1192233064313993-8354511413459127501-n.jpg')
illustration = Style.new(name: 'illustration', description: 'This style isn’t defined by its shapes, symbols or colors, but rather by the feelings transmitted. And to create these feelings, artists generally reduce the shading detail and limit the color gradients. They stick with 2-dimensional drawing and define the boundaries with solid black outlines. Much like American traditional, you’ll most often find concrete elements (figures, animals, plants). The main difference is that these elements are either a loyal reproduction of an original drawing (from TV, books, fantasy) or are an artwork shaped by the artist’s own style and imagination.')
illustration.photo.attach(io: illustration_photo, filename: 'illustration.jpg', content_type: 'image/jpg')
illustration.save


puts "creating requests"
# Request.create!(name: 'Jeff', address: 'france, Paris', body_part: 'arm', size: '10 inches', style: 'japanese', description: 'i would like it to b epic', user: user1, client: user2)
# Request.create!(name: 'Aslan', address: 'Uruguay', body_part: 'leg', size: '12 inches', style: 'gothic', description: 'i would like it to look like a barcode', user: user1, client: user2)
# Request.create!(name: 'Joesephineepoo', address: 'Narnia', body_part: 'shoulder', size: '1 inches', style: 'Narnian', description: 'i lost a dare', user: user1, client: user2)
# Request.create!(name: 'The Dude', address: 'London', body_part: 'chest', size: 'whole body', style: 'geometric', description: 'i am the dude, this means i will become one with tattoo', user: user1, client: user2)
# puts "creating bookings"
# Booking.create!(date: DateTime.new(2001,2,3,4,5,6), price: 600, address: 'SE17 2NF, London', request: Request.first, user: user1, client: user2 )
# Booking.create!(date: DateTime.new(2002,2,3,4,5,6), price: 600, address: 'SE5 0ED, London', request: Request.last, user: user1, client: user2 )
# Booking.create!(date: DateTime.new(2001,1,3,4,5,6), price: 600, address: 'SE17 2NF, London', request: Request.first, user: user1, client: user2 )
# Booking.create!(date: DateTime.new(2003,2,3,3,5,6), price: 600, address: 'SE5 0ED, London', request: Request.last, user: user1, client: user2 )
# Booking.create!(date: DateTime.new(2005,2,3,4,5,6), price: 600, address: 'SE17 2NF, London', request: Request.first, user: user1, client: user2 )
# Booking.create!(date: DateTime.new(2001,2,3,4,2,6), price: 600, address: 'SE5 0ED, London', request: Request.last, user: user1, client: user2 )
puts "Finished!"




