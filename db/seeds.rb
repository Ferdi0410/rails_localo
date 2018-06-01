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
puts "Destroyed all records"

u1 = User.new(
  {email: "lito@gmail.com", password:"1111111", first_name: "Lito", username: "Litotechie"}
  )

u1.save
#tour images
url1 = "http://res.cloudinary.com/dgccrihdr/image/upload/v1527759029/nyqximtd6eg3zmxbjvpw.jpg"
url2 = "http://res.cloudinary.com/dgccrihdr/image/upload/v1527759513/uyrd7shauafcbap7emb5.jpg"
url3 = "http://res.cloudinary.com/dgccrihdr/image/upload/v1527760064/ii1rjcpestiawdrkkw4b.jpg"
url4 = "http://res.cloudinary.com/dgccrihdr/image/upload/v1527769344/axqjm7jleic7uevapme4.jpg"
t1 = Tour.new(
  {title:"The story of Checkpoint Charlie", duration: 60, description:"A Cold War spy shares his story of the fascinating and terrifying battle of ideologies that once divided the world", category:"art", city:"Berlin"}
  )
t1.remote_photo_url = url1
t1.save

t2 = Tour.new(
  {title:"Historic Wall Tour", duration: 60, description:"Discover the story behind the Berlin Wall and the influence on the people", category:"urban", city:"Berlin"}
  )
t2.remote_photo_url = url2
t2.save

t3 = Tour.new(
  {title:"Berlin Club Tour", duration: 100, description:"Wanna see Berghain, Watergate or Club der Visionäre. A Berlin club veteran shares his experiences in his 30 years of Berlin nightlife. Jump in the World of Drugs, Electro and Sex", category:"art", city:"Berlin"}
  )
t3.remote_photo_url = url3
t3.save

t4 = Tour.new(
  {title:"Viktualienmarkt Tour", duration: 110, description:"Discover one of the most famous food markets in the world. With little stores and wine tasting you feel like a real Münchner Kindl", category:"architecture", city:"Munich"}
  )
t4.remote_photo_url = url4
t4.save



a1 = Attraction.new({title:"Reichstag", address: "Platz der Republik 1, 11011 Berlin", description: "Reichstag description", duration: 20 })
a1.save

a2 = Attraction.new({title:"Brandenburg gate", address: "Pariser Platz, 10117 Berlin",description: "Brandenburg gate description", duration: 15})
a2.save

a3 = Attraction.new({title:"Checkpoint charlie", address: "Friedrichstraße 43-45, 10117 Berlin", description: "Checkpoint Charlie description", duration: 35})
t5 = Tour.new(
  {title:"Shoreditch", duration: 120, description:"Dive in the most urban part of London. Crab a beer and discover the Home District of James - an Institution in Shoreditch", category:"urban", city:"London"}
  )

t5.remote_photo_url = url4
t5.save

a1 = Attraction.new(
  {title:"Eiffeltower", address:"Street", duration: 10}
  )
a1.save

t4.attractions << a1
t4.save

a1 = Attraction.new({title:"Reichstag", description: "Neo-Renaissance parliament building topped by a Norman Foster glass dome with 360-degree city views", duration: 20 })
a1.save

a2 = Attraction.new({title:"Brandenburg gate", description: "Restored 18th-centuray gate & landmark with 12 Doric columns topped by classical goddess statue", duration: 15})
a2.save

a3 = Attraction.new({title:"Checkpoint charlie", description: "Checkpoint Charlie was the name given by the Western Allies to the best-known Berlin Wall crossing point between East Berlin and West Berlin during the Cold War (1947–1991).", duration: 35})
a3.save

a4 = Attraction.new({title:"Berlin Wall", description: "Constructed by the German Democratic Republic (GDR, East Germany), starting on 13 August 1961, the Wall cut off (by land) West Berlin from virtually all of surrounding East Germany and East Berlin until government officials opened it in November 1989", duration: 35})
a4.save

t1.attractions << a1
t1.attractions << a2
t1.attractions << a3
t1.attractions << a4
t1.save

puts "Done seeding"

