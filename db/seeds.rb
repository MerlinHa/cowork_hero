# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
CoworkingSpace.destroy_all

user_a = User.create!({
  email: "a@a.a",
  password: "helloworld",
  name: "A"
})
user_a.remote_photo_url = "https://res.cloudinary.com/merlinha/image/upload/v1542014834/Official_portrait_of_Barack_Obama.jpg"
user_a.save

user_b = User.create!({
  email: "b@b.b",
  password: "helloworld",
  name: "B"
})
user_b.remote_photo_url = "https://res.cloudinary.com/merlinha/image/upload/v1542014835/Download_2.jpg"
user_b.save

user_c = User.create!({
  email: "c@c.c",
  password: "helloworld",
  name: "C"
})
user_c.remote_photo_url = "https://res.cloudinary.com/merlinha/image/upload/v1542014835/chuck-norris-15720761-1-402.jpg"
user_c.save

user_d = User.create!({
  email: "d@d.d",
  password: "helloworld",
  name: "D"
})


dojo = CoworkingSpace.create!({
  name: "Dojo",
  capacity: 50,
  price: 30,
  services: "Washroom",
  user_id: User.all.sample.id,
  short_desc: "Dojo Bali located one minute walk from Echo Beach, Canggu on the beautiful island of Bali, Indonesia",
  long_desc: "Dojo Coworking is really about our people, it’s about a highly motivated international & local community learning and collaborating, it’s not about fancy buildings (although they are nice), or how big the coworking space is, or how fast the internet connection is, it’s about real lasting human connections. Coworking at Dojo is highly productive with a quiet hum in the air and many different physical spaces & nooks to choose from, you will work alongside other like-minded people. The opportunity to mingle and network with other digital nomads and entrepreneurs is second to none.  Get involved..",
  address: "No. 88 Jalan Batu Mejan",
  city: "Canggu",
  country: "Indonesia",
  zip: 80361,
  latitude: -8.6534647,
  longitude: 115.1245233,
  })
dojo.remote_photo_url = "https://res.cloudinary.com/merlinha/image/upload/v1541770619/jvgrqyl78ja55vabdnuy.jpg"
dojo.save

hubud = CoworkingSpace.create!({
  name: "Hubud",
  capacity: 80,
  price: 25,
  services: "Internet",
  user_id: User.all.sample.id,
  short_desc: "Hubud is a coworking space and community in Bali that’s leading the global movement of location independence in life + business. ",
  long_desc: "It’s about collaborating on the world’s next big innovation, experimenting with your personal re-invention, or sinking deep into a creative business pursuit. It’s about play + productivity + purpose. Most of all, it’s about discovering the freedom and satisfaction of choosing a life that aligns with your most genuine self—and having a crew of like-minded dreamers + doers beside you for the ride.",
  address: "Monkey Forest Road 88x",
  city: "Ubud",
  country: "Indonesia",
  zip: 80571,
  latitude: -8.5180417,
  longitude: 115.2591933,
  })
hubud.remote_photo_url = "https://res.cloudinary.com/merlinha/image/upload/v1541770658/hvolxl8zw04fsqk2v3fb.jpg"
hubud.save

outpost_canggu = CoworkingSpace.create!({
  name: "Outpost",
  capacity: 30,
  price: 10,
  services: "Pool",
  user_id: User.all.sample.id,
  short_desc: "Outpost is a network of coliving, coworking and social spaces for location-independent entrepreneurs, creatives and professionals in Bali.",
  long_desc: "Outpost is a home base for a fast-growing community of global citizens seeking to design life on their own terms in idyllic destinations. From modern coworking spaces with an active community to comfortable coliving, each Outpost neighborhood has been created to help you feel connected and productive from the moment you arrive. Our mission is to help you join the remote revolution and design your best life.",
  address: "Jl. Raya Semat No.1",
  city: "Canggu",
  country: "Indonesia",
  zip: 80361,
  latitude: -8.6579883,
  longitude: 115.1380277,
  })
outpost_canggu.remote_photo_url = "https://res.cloudinary.com/merlinha/image/upload/v1541770689/j8gidjp5yv4onybvo9jl.jpg"
outpost_canggu.save

district = CoworkingSpace.create!({
  name: "District",
  capacity: 40,
  price: 40,
  services: "Rice fields, Cafe",
  user_id: User.all.sample.id,
  short_desc: "district (previously c'ugh house) is a resto cafe & bar serving naturally healthy and delicious breakfasts, lunches, dinners, barista coffees, smoothies and juices in Bali.",
  long_desc: "while our ground floor is geared towards a resto cafe and bar vibe, our first floor is dedicated as a coworking space for those who purchase a fibreoptic broadband package, designed for those who like to be in a cafe environment with a bit of this and that going on nearby.  here, we have a high-speed (45 mbps) fibreoptic broadband line at a competitive price (see below) in bali.  we limit each user to 20 mbps to ensure no one individual can consume all bandwidth.  we provide a mix of seating options using tables at standing (adjustable), normal and low heights in different areas with specific purposes in mind; for example, large and small air-conditioned quiet rooms (available for hire as meeting/event rooms), group spaces and an open lounge space.  you can also enjoy anything from the menu up here too.",
  address: "Jl. Pantai Berawa No.9090",
  city: "Canggu",
  country: "Indonesia",
  zip: 80361,
  latitude: -8.6602651,
  longitude: 115.1386477,
  })
 district.remote_photo_url = "https://res.cloudinary.com/merlinha/image/upload/v1541770367/gezzafjwcc6o4ek5o27y.jpg"
 district.save

 outpost_ubud = CoworkingSpace.create!({
  name: "Outpost",
  capacity: 35,
  price: 25,
  services: "Nice staff",
  user_id: User.all.sample.id,
  short_desc: "Outpost is a network of coliving, coworking and social spaces for location-independent entrepreneurs, creatives and professionals in Balir.",
  long_desc: "Outpost is a home base for a fast-growing community of global citizens seeking to design life on their own terms in idyllic destinations. From modern coworking spaces with an active community to comfortable coliving, each Outpost neighborhood has been created to help you feel connected and productive from the moment you arrive. Our mission is to help you join the remote revolution and design your best life.",
  address: "Jl. Raya Nyuh Kuning",
  city: "Ubud",
  country: "Indonesia",
  zip: 80571,
  latitude: -8.527722,
  longitude: 115.255759,
  })
puts CoworkingSpace.count
 outpost_ubud.remote_photo_url = "https://res.cloudinary.com/merlinha/image/upload/v1541770720/m9lp7blcngnnj6gns8vr.jpg"
 outpost_ubud.save

Booking.create!({
coworking_space: CoworkingSpace.all.sample,
start_datetime: "01/01/2019",
end_datetime: "01/10/2019",
total_price:300,
user: User.all.sample,
status: false
 })

Booking.create!({
coworking_space: CoworkingSpace.all.sample,
start_datetime: "02/02/2019",
end_datetime: "02/10/2019",
total_price: 26,
user: User.all.sample,
status: false
 })

Booking.create!({
coworking_space: CoworkingSpace.all.sample,
start_datetime: "03/03/2019",
end_datetime: "03/10/2019",
total_price: 72,
user: User.all.sample,
status: true
 })

Booking.create!({
coworking_space: CoworkingSpace.all.sample,
start_datetime: "04/04/2019",
end_datetime: "04/10/2019",
total_price: 120,
user: User.all.sample,
status: false
 })

Booking.create!({
coworking_space: CoworkingSpace.all.sample,
start_datetime: "05/05/2019",
end_datetime: "05/10/2019",
total_price: 30,
user: User.all.sample,
status: fals
 })

Booking.create!({
coworking_space: CoworkingSpace.all.sample,
start_datetime: "06/06/2019",
end_datetime: "06/10/2019",
total_price: 66,
user: User.all.sample,
status: true
 })
