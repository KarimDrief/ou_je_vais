require "open-uri"

puts "Cleaning database..."
Country.destroy_all
Activity.destroy_all

puts " Creating country"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591791945/aron-van-de-pol-tZDtyUrYrFU-unsplash_jowmpa.jpg')
england = Country.new(name: 'England', description: "The land of hope and glory", quarantine_rules:"You got fourteen days of quarantine when you arrive on the territory. Be patient !",
  active_quarantine: 14)
england.photo.attach(io: file, filename: 'england.png', content_type: 'image/png')
england.save

puts "Created #{england.name}"


file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591816233/chris-karidis-nnzkZNYWHaU-unsplash_nrxrvy.jpg')
france = Country.new(name: 'France', description: "The land of love, wine and great food", quarantine_rules:"As soon as you arrived on the territory, you can travel all around",
  active_quarantine: 0)
france.photo.attach(io: file, filename: 'france.png', content_type: 'image/png')
france.save

puts "Created #{france.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591872576/florian-wehde-WBGjg0DsO_g-unsplash_lnyd3k.jpg')
spain = Country.new(name: 'Spain', description: "In the land of Don Quixote", quarantine_rules:"One of the most affected countries by the covid-19 ! You can't travel to spain until July 1st 2020",
  active_quarantine: nil)
spain.photo.attach(io: file, filename: 'spain.png', content_type: 'image/png')
spain.save

puts "Created #{spain.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591873115/berlin_unatp0.jpg')
germany = Country.new(name: 'Germany', description: "Located in the heart of the old continent, Germany is compelled of 16 states and is well known for being the largest national economy in Europe and one of the biggest in the world. ... Usually when one says Germany, among the first things that come to people's mind is Hitler, the Berlin Wall and beer.", quarantine_rules:"No quarantine rules",
  active_quarantine: nil)
germany.photo.attach(io: file, filename: 'germany.png', content_type: 'image/png')
germany.save

puts "Created #{germany.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591876935/istanbul_u2atxn.jpg')
turkey = Country.new(name: 'Turkey', description: "Turkey is known for having a huge variety and type of places! From amazing beaches through its more than 8000km of coastline to big mountain ranges, including Mount Arat (over 5000 meters). You can also go to places like Istanbul or Ankara which are the most famous cities in Turkey to visit.", quarantine_rules:"No quarantine rules",
  active_quarantine: nil)
turkey.photo.attach(io: file, filename: 'turkey.png', content_type: 'image/png')
turkey.save

puts "Created #{turkey.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591877511/amsterdam_oiujec.jpg')
netherlands = Country.new(name: 'Netherlands', description: "The Netherlands (or Holland) may be a small country, but it’s packed with world famous icons. Discover our bulb fields, windmills, cheese markets, wooden shoes, canals of Amsterdam, masterpieces of Old Masters, Delft Blue earthenware, innovative water-management and millions of bicycles. Find out more about these and other typical Dutch highlights.",
  quarantine_rules:"No quarantine rules but you have to reserve your holidays accommodation before. Without a valid reservation you can be refused entry at the border", active_quarantine: nil)
netherlands.photo.attach(io: file, filename: 'netherlands.png', content_type: 'image/png')
netherlands.save

puts "Created #{netherlands.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591877516/Athe%CC%81nes_ezxazh.jpg')
greece = Country.new(name: 'Greece', description: "Famous for being the birthplace of democracy, the creation of the Olympic Games, and for its unique and historical architecture. Some examples include the Acropolis in Athens, the Sanctuary of Delphi, and the ancient Theatre of Epidaurus",
quarantine_rules:" Government has announced that the international tourism period will begin on June 15 in Greece. Direct international flights to tourist destination in Greece will gradually resume from july 1st", active_quarantine: nil)
greece.photo.attach(io: file, filename: 'greece.png', content_type: 'image/png')
greece.save

puts "Created #{greece.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591877516/Athe%CC%81nes_ezxazh.jpg')
activity1 = Activity.new(name: 'Salut', description: "Visiter la tour Eiffel reste pour la plupart de nos visiteurs un souvenir fort. La Tour est aussi un des monuments payants les plus visités au monde, avec près de 7 millions de visiteurs par an. Il est donc préférable de bien s’organiser en amont, surtout si vous venez de loin, pour que l’expérience de visite de ce symbole de Paris et de la France reste la plus fluide possible, pour petits et grands !",
  adress: 'Champ de Mars, 5 Avenue Anatole France, 75007 Paris', country_id: france.id)
activity1.photo.attach(io: file, filename: 'activity.png', content_type: 'image/png')
activity1.save

puts "Created #{activity1.name}"



file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591877516/Athe%CC%81nes_ezxazh.jpg')
activity2 = Activity.new(name: 'Visit de la tour Eiffel', description: "Visiter la tour Eiffel reste pour la plupart de nos visiteurs un souvenir fort. La Tour est aussi un des monuments payants les plus visités au monde, avec près de 7 millions de visiteurs par an. Il est donc préférable de bien s’organiser en amont, surtout si vous venez de loin, pour que l’expérience de visite de ce symbole de Paris et de la France reste la plus fluide possible, pour petits et grands !",
  adress: 'Champ de Mars, 5 Avenue Anatole France, 75007 Paris', country_id: france.id)
activity2.photo.attach(io: file, filename: 'activity.png', content_type: 'image/png')
activity2.save

puts "Created #{activity2.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591877516/Athe%CC%81nes_ezxazh.jpg')
activity3 = Activity.new(name: 'Visit de la tour Eiffel', description: "Visiter la tour Eiffel reste pour la plupart de nos visiteurs un souvenir fort. La Tour est aussi un des monuments payants les plus visités au monde, avec près de 7 millions de visiteurs par an. Il est donc préférable de bien s’organiser en amont, surtout si vous venez de loin, pour que l’expérience de visite de ce symbole de Paris et de la France reste la plus fluide possible, pour petits et grands !",
  adress: 'Champ de Mars, 5 Avenue Anatole France, 75007 Paris', country_id: spain.id)
activity3.photo.attach(io: file, filename: 'activity.png', content_type: 'image/png')
activity3.save

puts "Created #{activity3.name}"
puts "Finished"


# url = "https://restcountries.eu/rest/v2/all"
# repo = open(url).read()
# ending = JSON.parse(repo)
# puts ending[0]["region"]
