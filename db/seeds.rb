# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tour.destroy_all
User.destroy_all
Attraction.destroy_all

u1 = User.new(
  {email: "lito@gmail.com", password:"1111111", first_name: "Lito", username: "Litotechie"}
  )

u1.save

t1 = Tour.new(
  {title:"tour 1", duration: 60, description:"this is a test tour", category:"art", city:"Berlin"}
  )
t1.save

t1 = Tour.new(
  {title:"tour 2", duration: 60, description:"this is a test tour", category:"urban", city:"Berlin"}
  )
t1.save


a1 = Attraction.new({title:"Reichstag", description: "Reichstag description", duration: 20 })
a1.save

a2 = Attraction.new({title:"Brandenburg gate", description: "Brandenburg gate description", duration: 15})
a2.save

a3 = Attraction.new({title:"Checkpoint charlie", description: "Checkpoint Charlie description", duration: 35})
a3.save

t1.attractions << a1
t1.attractions << a2
t1.attractions << a3
t1.save
