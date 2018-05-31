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

url1 = "http://res.cloudinary.com/dgccrihdr/image/upload/v1527759029/nyqximtd6eg3zmxbjvpw.jpg"
url2 = "http://res.cloudinary.com/dgccrihdr/image/upload/v1527759513/uyrd7shauafcbap7emb5.jpg"
url3 = "http://res.cloudinary.com/dgccrihdr/image/upload/v1527760064/ii1rjcpestiawdrkkw4b.jpg"
t1 = Tour.new(
  {title:"The story of the legendary Checkpoint Charlie", duration: 60, description:"this is a test tour", category:"art", city:"Berlin"}
  )

t1.save

t2 = Tour.new(
  {title:"Historic Wall Tour", duration: 60, description:"this is a test tour", category:"urban", city:"Berlin"}
  )
t2.remote_photo_url = url2
t2.save

t3 = Tour.new(
  {title:"tour 3", duration: 100, description:"this is a test tour", category:"art", city:"London"}
  )
t3.remote_photo_url = url3
t3.save

t4 = Tour.new(
  {title:"tour 4", duration: 110, description:"this is a test tour", category:"architecture", city:"Munich"}
  )
t4.save

a1 = Attraction.new(
  {title:"Eiffeltower", address:"Street", duration: 10}
  )
a1.save

t4.attractions << a1
t4.save

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
