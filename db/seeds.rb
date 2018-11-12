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
  password: "helloworld"
})
user_b = User.create!({
  email: "b@b.b",
  password: "helloworld"
})
user_c = User.create!({
  email: "c@c.c",
  password: "helloworld"
})


CoworkingSpace.create!({
  name: "Dojo",
  location: "Canggu",
  capacity: "50",
  price: 30,
  services: "Washroom",
  user: user_a
  })

CoworkingSpace.create!({
  name: "Hubud",
  location: "Ubud",
  capacity: "80",
  price: 25,
  services: "Internet",
  user: user_b
  })

CoworkingSpace.create!({
  name: "Outpost",
  location: "Berawa",
  capacity: "30",
  price: 10,
  services: "Pool",
  user: user_c
  })

CoworkingSpace.create!({
  name: "District",
  location: "Berawa",
  capacity: "40",
  price: 40,
  services: "Rice fields, Cafe",
  user: user_a
  })
puts CoworkingSpace.count
