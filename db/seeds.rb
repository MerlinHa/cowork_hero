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
  location: "Canggu",
  capacity: "50",
  price: 30,
  services: "Washroom",
  user_id: 3
  })

CoworkingSpace.create!({
  name: "Hubud",
  location: "Ubud",
  capacity: "80",
  price: 25,
  services: "Internet",
  user_id: 2
  })

CoworkingSpace.create!({
  name: "Outpost",
  location: "Berawa",
  capacity: "30",
  price: 10,
  services: "Pool",
  user_id: 1
  })

CoworkingSpace.create!({
  name: "District",
  location: "Berawa",
  capacity: "40",
  price: 40,
  services: "Rice fields, Cafe",
  user_id: 1
  })
