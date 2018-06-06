# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tour.destroy_all
User.destroy_all
Guide.destroy_all
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
url5 = "http://res.cloudinary.com/dgccrihdr/image/upload/v1527862571/2405727112_4dbb70954a_b.jpg"
url6 = "http://res.cloudinary.com/dgccrihdr/image/upload/v1527862790/shoreditch-london-guide.jpg"
url_lito = "http://res.cloudinary.com/dgccrihdr/image/upload/v1527186297/zlkezooorwzs6mzuwopt.jpg"
# attraction url
url7 = "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Checkpoint_Charlie_1961-10-27.jpg/290px-Checkpoint_Charlie_1961-10-27.jpg"


g1 = Guide.new(name:"Lito", description:"I am a tour provider for localo")
g1.remote_photo_url = url_lito
g1.save

url1 = "http://berlijnoverzicht.nl/wp-content/uploads/2016/09/Checkpoint-Charlie-1.jpg"
t1 = Tour.new(
  {title:"The story of Checkpoint Charlie", duration: 60, description:"A Cold War spy shares his story of the fascinating and terrifying battle of ideologies that once divided the world", category:"history", city:"Berlin"}
  )
t1.remote_photo_url = url1
t1.save

t2 = Tour.new(
  {title:"Historic Wall Tour", duration: 60, description:"Discover the story behind the Berlin Wall and the influence on the people", category:"history", city:"Berlin"}
  )
t2.remote_photo_url = url2
t2.save

t3 = Tour.new(
  {title:"Berlin Club Tour", duration: 100, description:"Wanna see Berghain, Watergate or Club der Visionäre. A Berlin club veteran shares his experiences in his 30 years of Berlin nightlife. Jump in the World of Drugs, Electro and Sex", category:"urban", city:"Berlin"}
  )
t3.remote_photo_url = url3
t3.save

t4 = Tour.new(
  {title:"Kollwitzer Kiez", duration: 110, description:"Discover one of the most iconic neighboorhoods in the Berlin.", category:"urban", city:"Berlin"}
  )
t4.remote_photo_url = url4
t4.save

t5 = Tour.new(
  {title:"Viktualienmarkt", duration: 110, description:"Discover one of the most famous food markets in the world.", category:"urban", city:"Munich"}
  )
t5.remote_photo_url = url5
t5.save




a1 = Attraction.new({title:"Reichstag", address: "Platz der Republik 1, 11011 Berlin", description: "Neo-Renaissance parliament building topped by a Norman Foster glass dome with 360-degree city views", duration: 20 })
a1.save

a2 = Attraction.new({title:"Brandenburg gate", address: "Pariser Platz, 10117 Berlin", description: "Restored 18th-centuray gate & landmark with 12 Doric columns topped by classical goddess statue", duration: 15})
a2.save

a3 = Attraction.new({title:"Checkpoint charlie", address: "Friedrichstraße 43-45, 10117 Berlin", description: "Checkpoint Charlie description", duration: 35})
a3.remote_photo_url = url7
a3.save

t6 = Tour.new(
  {title:"Shoreditch", duration: 120, description:"Dive in the most urban part of London. Crab a beer and discover the Home District of James - an Institution in Shoreditch", category:"urban", city:"London"}
  )
t6.remote_photo_url = url6
t6.save



a4 = Attraction.new({title:"Berlin Wall", address: "Mühlenstraße 78, 10243 Berlin", description: "Constructed by the German Democratic Republic (GDR, East Germany), starting on 13 August 1961, the Wall cut off (by land) West Berlin from virtually all of surrounding East Germany and East Berlin until government officials opened it in November 1989", duration: 35})
a4.save





t1.attractions << a1
t1.attractions << a2
t1.attractions << a3
t1.attractions << a4
t1.save

puts "Done seeding"

