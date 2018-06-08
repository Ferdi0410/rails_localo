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

#tour images
url1 = "https://res.cloudinary.com/dgccrihdr/image/upload/v1527759029/nyqximtd6eg3zmxbjvpw.jpg"
url2 = "https://res.cloudinary.com/dgccrihdr/image/upload/v1527759513/uyrd7shauafcbap7emb5.jpg"
url3 = "https://res.cloudinary.com/dgccrihdr/image/upload/v1527760064/ii1rjcpestiawdrkkw4b.jpg"
url4 = "https://res.cloudinary.com/dgccrihdr/image/upload/v1527769344/axqjm7jleic7uevapme4.jpg"
url5 = "https://res.cloudinary.com/dgccrihdr/image/upload/v1527862571/2405727112_4dbb70954a_b.jpg"
url6 = "https://res.cloudinary.com/dgccrihdr/image/upload/v1527862790/shoreditch-london-guide.jpg"
url_lito = "https://res.cloudinary.com/dgccrihdr/image/upload/v1527186297/zlkezooorwzs6mzuwopt.jpg"

# attraction images
url7 = "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Checkpoint_Charlie_1961-10-27.jpg/290px-Checkpoint_Charlie_1961-10-27.jpg"
url8 = "http://res.cloudinary.com/dgccrihdr/image/upload/v1528367647/Wall-museum-3.jpg"

# user and guide images
url_ferdi = "https://res.cloudinary.com/dgccrihdr/image/upload/v1528199966/28942904_10156035825481702_1708255590_o.jpg"
url_ylito = "https://res.cloudinary.com/dgccrihdr/image/upload/v1528199944/255926_10150187295392984_8256731_o.jpg"
url_tony = "https://res.cloudinary.com/dgccrihdr/image/upload/v1528199937/hhiiiockgsi2hl04lt4u_1.jpg"
url_dome = "https://res.cloudinary.com/dgccrihdr/image/upload/v1528204124/17522792_1329289437113836_606457125750450379_n.jpg"

# users

u1 = User.new({email: "lito@gmail.com", password:"1111111", first_name: "Lito", username: "Litotechie"})
u1.remote_photo_url = url_lito
u1.save

u2 = User.new({email: "ferdi@gmail.com", password:"1111111", first_name: "Ferdi", username: "Ferdi"})
u2.remote_photo_url = url_ferdi
u2.save

# guides

g1 = Guide.new(name:"Lito", description:"I am a tour provider for localo")
g1.remote_photo_url = url_lito
g1.save

g2 = Guide.new(name:"Ferdi", description:"El Chefe brings you to X-Berg and Neukölln")
g2.remote_photo_url = url_ferdi
g2.save

g3 = Guide.new(name:"Young Lito", description:"Brings you to the nicest corners of Brussels")
g3.remote_photo_url = url_ylito
g3.save

g4 = Guide.new(name:"Tony", description:"Gets you higher than Spiderman")
g4.remote_photo_url = url_tony
g4.save

g5 = Guide.new(name:"Dome", description:"Super Hipster with excessive lifestyle shows you every corner of Berghain and co.")
g5.remote_photo_url = url_dome
g5.save


# Tours
t1 = Tour.new(
  {title:"Checkpoint Charlie", duration: 60, description:"A Cold War spy shares his story of the fascinating and terrifying battle of ideologies that once divided the world.", category:"history", city:"Berlin"}
  )
t1.remote_photo_url = url1
t1.save

t2 = Tour.new(
  {title:"Historic Wall Tour", duration: 60, description:"Discover the story behind the Berlin Wall and how it affected the life of millions of Berliners. This tour is an absolut must for anyone visiting Berlin.", category:"history", city:"Berlin"}
  )
t2.remote_photo_url = url2
t2.save

t3 = Tour.new(
  {title:"Berlin Club Tour", duration: 100, description:"Want to see Berghain, Watergate or Club der Visionäre. A Berlin club veteran shares his experiences in his 30 years of Berlin nightlife. Jump in the World of Drugs, Electro and Sex", category:"urban", city:"Berlin"}
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

t6 = Tour.new(
  {title:"Shoreditch", duration: 120, description:"Dive in the most urban part of London. Crab a beer and discover the Home District of James - an Institution in Shoreditch", category:"urban", city:"London"}
  )
t6.remote_photo_url = url6
t6.save

# attractions
a1 = Attraction.new({title:"Reichstag", address: "Platz der Republik 1, 11011 Berlin", description: "Neo-Renaissance parliament building topped by a Norman Foster glass dome with 360-degree city views", duration: 20 })
a1.save

a2 = Attraction.new({title:"Brandenburg Gate", address: "Pariser Platz, 10117 Berlin", description: "Restored 18th-centuray gate & landmark with 12 Doric columns topped by classical goddess statue", duration: 15})
a2.save

a3 = Attraction.new({title:"Checkpoint Charlie", address: "Friedrichstraße 43-45, 10117 Berlin", description: "Checkpoint Charlie was the name given by the Western Allies to the best-known Berlin Wall crossing point between East Berlin and West Berlin during the Cold War", duration: 35})
a3.remote_photo_url = url7
a3.save

a4 = Attraction.new({title:"Berlin Wall", address: "Mühlenstraße 78, 10243 Berlin", description: "Constructed by the German Democratic Republic (GDR, East Germany), starting on 13 August 1961, the Wall cut off (by land) West Berlin from virtually all of surrounding East Germany and East Berlin until government officials opened it in November 1989", duration: 35})
a4.save

# club attractions
clubs_a1 = Attraction.new({title:"Club der Visionäre", address: "Am Flutgraben, 12435 Berlin", description: "Riverside bar with a wooden sun terrace & electronic music, known for Sunday afternoon parties.", duration: 60 })
clubs_a2 = Attraction.new({title:"Watergate", address: "Falckensteinstraße 49, 10997 Berlin", description: "Riverside nightclub with floor-to-ceiling windows, a terrace, LED lighting & international DJs.", duration: 60 })
clubs_a3 = Attraction.new({title:"IPSE", address: "Vor dem Schlesischen Tor 2, 10997 Berlin", description: "PSE is the open air club of the Berlin-Kreuzbergs's well-known Freischwimmer Restaurant, the club's direct neighbour.", duration: 60 })
clubs_a4 = Attraction.new({title:"Berghain", address: "Am Wriezener Bahnhof, 10243 Berlin", description: "Berghain is a nightclub in Berlin, Germany. It is named after its location near the border between Kreuzberg and Friedrichshain in Berlin, and is a short walk from Berlin Ostbahnhof main line railway station", duration: 120 })


#wall tour attractions
wall_a1 = Attraction.new({title:"Checkpoint Charlie", address: "Friedrichstraße 43-45, 10117 Berlin", description: "Your Berlin Wall tour begins here, at Friedrichstrasse in central Berlin and at the former crossing point for Allied forces, diplomats and civilians between East and West.", duration: 60 })
wall_a2 = Attraction.new({title:"Eastside Gallery", address: "Mühlenstraße 3-100, 10243 Berlin", description: "A 1.3km strip of the Berlin Wall that is covered with over 100 grafitis by a collective of artists.", duration: 60 })
wall_a3 = Attraction.new({title:"Wall Memorial", address: "Rheinsberger Str. 77, 10115 Berlin", description: "This is a unique site demonstrating how the Wall destroyed both the urban space and people's lives. The wall used to run in the middle of Bernauer Strasse.", duration: 60 })
wall_a3.remote_photo_url = url8
wall_a3.save
wall_a4 = Attraction.new({title:"Mauerpark", address: "Gleimstraße 55, 10437 Berlin", description: "Once part of the deathstrip this park is now famous for it's Sunday Karaoke and Fleamarket.", duration: 60 })

# assign guides to tours
t1.guide = g2
t1.save
t2.guide = g2
t2.save
t3.guide = g5
t3.save
t4.guide = g2
t4.save
t5.guide = g2
t5.save

# build tours with attractions
# checkpoint charlie
t1.attractions << a1
t1.attractions << a2
t1.attractions << a3
t1.attractions << a4
t1.save

# club tour
t3.attractions << clubs_a1
t3.attractions << clubs_a2
t3.attractions << clubs_a3
t3.attractions << clubs_a4
t3.save

#wall tour
t2.attractions << wall_a1
t2.attractions << wall_a2
t2.attractions << wall_a3
t2.attractions << wall_a4
t2.save

puts "Done seeding"

