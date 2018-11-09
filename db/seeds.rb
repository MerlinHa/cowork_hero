# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!({
  email: "a@a.a",
  password: "helloworld"
})
User.create!({
  email: "b@b.b",
  password: "helloworld"
})
User.create!({
  email: "c@c.c",
  password: "helloworld"
})


CoworkingSpace.create!({
  name: "Dojo",
  capacity: "50",
  price: 30,
  services: "Washroom",
  user_id: 3,
  short_desc: "Dojo Bali located one minute walk from Echo Beach, Canggu on the beautiful island of Bali, Indonesia",
  long_desc: "Dojo Coworking is really about our people, it’s about a highly motivated international & local community learning and collaborating, it’s not about fancy buildings (although they are nice), or how big the coworking space is, or how fast the internet connection is, it’s about real lasting human connections. Coworking at Dojo is highly productive with a quiet hum in the air and many different physical spaces & nooks to choose from, you will work alongside other like-minded people. The opportunity to mingle and network with other digital nomads and entrepreneurs is second to none.  Get involved..",
  address: "No. 88 Jalan Batu Mejan",
  city: "Canggu",
  country: "Indonesia",
  zip: 80361
  })

CoworkingSpace.create!({
  name: "Hubud",
  capacity: "80",
  price: 25,
  services: "Internet",
  user_id: 2,
  short_desc: "Hubud is a coworking space and community that’s leading the global movement of location independence in life + business. ",
  long_desc: "It’s about collaborating on the world’s next big innovation, experimenting with your personal re-invention, or sinking deep into a creative business pursuit. It’s about play + productivity + purpose. Most of all, it’s about discovering the freedom and satisfaction of choosing a life that aligns with your most genuine self—and having a crew of like-minded dreamers + doers beside you for the ride.",
  address: "Monkey Forest Road 88x",
  city: "Ubud",
  country: "Indonesia",
  zip: 80571
  })

CoworkingSpace.create!({
  name: "Outpost",
  capacity: "30",
  price: 10,
  services: "Pool",
  user_id: 1,
  short_desc: "Outpost is a network of coliving, coworking and social spaces for location-independent entrepreneurs, creatives and professionals.",
  long_desc: "Outpost is a home base for a fast-growing community of global citizens seeking to design life on their own terms in idyllic destinations. From modern coworking spaces with an active community to comfortable coliving, each Outpost neighborhood has been created to help you feel connected and productive from the moment you arrive. Our mission is to help you join the remote revolution and design your best life.",
  address: "Jl. Raya Semat No.1",
  city: "Canggu",
  country: "Indonesia",
  zip: 80361
  })

CoworkingSpace.create!({
  name: "District",
  location: "Berawa",
  capacity: "40",
  price: 40,
  services: "Rice fields, Cafe",
  user_id: 1,
  short_desc: "district (previously c'ugh house) is a resto cafe & bar serving naturally healthy and delicious breakfasts, lunches, dinners, barista coffees, smoothies and juices",
  long_desc: "while our ground floor is geared towards a resto cafe and bar vibe, our first floor is dedicated as a coworking space for those who purchase a fibreoptic broadband package, designed for those who like to be in a cafe environment with a bit of this and that going on nearby.  here, we have a high-speed (45 mbps) fibreoptic broadband line at a competitive price (see below) in bali.  we limit each user to 20 mbps to ensure no one individual can consume all bandwidth.  we provide a mix of seating options using tables at standing (adjustable), normal and low heights in different areas with specific purposes in mind; for example, large and small air-conditioned quiet rooms (available for hire as meeting/event rooms), group spaces and an open lounge space.  you can also enjoy anything from the menu up here too.",
  address: "Jl. Pantai Berawa No.9090",
  city: "Canggu",
  country: "Indonesia",
  zip: 80361
  })
