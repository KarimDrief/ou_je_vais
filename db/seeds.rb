require "open-uri"

puts "Cleaning database..."
Country.destroy_all
Activity.destroy_all

puts " Creating country"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591791945/aron-van-de-pol-tZDtyUrYrFU-unsplash_jowmpa.jpg')
angleterre = Country.new(name: 'Angleterre', description: "The land of hope and glory", quarantine_rules:"You got fourteen days of quarantine when you arrive on the territory. Be patient !",
  active_quarantine: 14)
angleterre.photo.attach(io: file, filename: 'angleterre.png', content_type: 'image/png')
angleterre.save

puts "Created #{angleterre.name}"


file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591816233/chris-karidis-nnzkZNYWHaU-unsplash_nrxrvy.jpg')
france = Country.new(name: 'France', description: "The land of love, wine and great food", quarantine_rules:"As soon as you arrived on the territory, you can travel all around",
  active_quarantine: 0)
france.photo.attach(io: file, filename: 'france.png', content_type: 'image/png')
france.save

puts "Created #{france.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591872576/florian-wehde-WBGjg0DsO_g-unsplash_lnyd3k.jpg')
espagne = Country.new(name: 'Espagne', description: "In the land of Don Quixote", quarantine_rules:"One of the most affected countries by the covid-19 ! You can't travel to espagne until July 1st 2020",
  active_quarantine: nil)
espagne.photo.attach(io: file, filename: 'espagne.png', content_type: 'image/png')
espagne.save

puts "Created #{espagne.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591873115/berlin_unatp0.jpg')
allemagne = Country.new(name: 'Allemagne', description: "Located in the heart of the old continent, allemagne is compelled of 16 states and is well known for being the largest national economy in Europe and one of the biggest in the world. ... Usually when one says allemagne, among the first things that come to people's mind is Hitler, the Berlin Wall and beer.", quarantine_rules:"No quarantine rules",
  active_quarantine: nil)
allemagne.photo.attach(io: file, filename: 'allemagne.png', content_type: 'image/png')
allemagne.save

puts "Created #{allemagne.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591876935/istanbul_u2atxn.jpg')
turquie = Country.new(name: 'Turquie', description: "turquie is known for having a huge variety and type of places! From amazing beaches through its more than 8000km of coastline to big mountain ranges, including Mount Arat (over 5000 meters). You can also go to places like Istanbul or Ankara which are the most famous cities in turquie to visit.", quarantine_rules:"No quarantine rules",
  active_quarantine: nil)
turquie.photo.attach(io: file, filename: 'turquie.png', content_type: 'image/png')
turquie.save

puts "Created #{turquie.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591877511/amsterdam_oiujec.jpg')
pays_bas = Country.new(name: 'Pays-Bas', description: "The pays_bas (or Holland) may be a small country, but it’s packed with world famous icons. Discover our bulb fields, windmills, cheese markets, wooden shoes, canals of Amsterdam, masterpieces of Old Masters, Delft Blue earthenware, innovative water-management and millions of bicycles. Find out more about these and other typical Dutch highlights.",
  quarantine_rules:"No quarantine rules but you have to reserve your holidays accommodation before. Without a valid reservation you can be refused entry at the border", active_quarantine: nil)
pays_bas.photo.attach(io: file, filename: 'pays_bas.png', content_type: 'image/png')
pays_bas.save

puts "Created #{pays_bas.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591877516/Athe%CC%81nes_ezxazh.jpg')
grèce = Country.new(name: 'Grèce', description: "Famous for being the birthplace of democracy, the creation of the Olympic Games, and for its unique and historical architecture. Some examples include the Acropolis in Athens, the Sanctuary of Delphi, and the ancient Theatre of Epidaurus",
quarantine_rules:" Government has announced that the international tourism period will begin on June 15 in grèce. Direct international flights to tourist destination in grèce will gradually resume from july 1st", active_quarantine: nil)
grèce.photo.attach(io: file, filename: 'grèce.png', content_type: 'image/png')
grèce.save

puts "Created #{grèce.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
activity1 = Activity.new(name: 'Tour Eiffel', description: "Visiter la tour Eiffel reste pour la plupart de nos visiteurs un souvenir fort. La Tour est aussi un des monuments payants les plus visités au monde, avec près de 7 millions de visiteurs par an. Il est donc préférable de bien s’organiser en amont, surtout si vous venez de loin, pour que l’expérience de visite de ce symbole de Paris et de la France reste la plus fluide possible, pour petits et grands !",
  adress: 'Champ de Mars, 5 Avenue Anatole France, 75007 Paris', country_id: france.id, urbain: true)
activity1.photo.attach(io: file, filename: 'activity1.png', content_type: 'image/png')
activity1.save

puts "Created #{activity1.name}"



file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591890209/montmartre_ofwbzk.jpg')
activity2 = Activity.new(name: 'Montmartre', description: "Montmartre est un quartier de Paris dominé par la basilique du Sacré-Cœur. Depuis le XIXᵉ siècle, il accueille de nombreux artistes tels que Picasso ou Modigliani et devient le symbole d'un mode de vie bohème.",
  adress: 'Quartier Montmartre, 75018 Paris', country_id: france.id, culturel: true)
activity2.photo.attach(io: file, filename: 'activity2.png', content_type: 'image/png')
activity2.save

puts "Created #{activity2.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591967208/jardins_du_lux_ekxgig.jpg')
activity3 = Activity.new(name: 'jardins du Luxembourg', description: "Parc du XVIIe siècle comprenant des arbres et des jardins soigneusement agencés, ainsi que des statues.",
  adress: '75006 Paris', country_id: france.id, nature: true)
activity3.photo.attach(io: file, filename: 'activity3.png', content_type: 'image/png')
activity3.save

puts "Created #{activity3.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591967452/Plaza_mayor_ur5lao.jpg')
activity4 = Activity.new(name: 'Plaza Mayor', description: "La Plaza Mayor est située au cœur de Madrid, à quelques mètres de la Puerta del Sol. Inaugurée en 1619, elle est tout un symbole pour la capitale.",
  adress: 'Plaza Mayor, 28012 Madrid, Espagne', country_id: espagne.id, urbain: true, )
activity4.photo.attach(io: file, filename: 'activity4.png', content_type: 'image/png')
activity4.save

puts "Created #{activity4.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591967452/Plaza_mayor_ur5lao.jpg')
activity5 = Activity.new(name: 'Plaza Mayor', description: "La Plaza Mayor est située au cœur de Madrid, à quelques mètres de la Puerta del Sol. Inaugurée en 1619, elle est tout un symbole pour la capitale.",
  adress: 'Plaza Mayor, 28012 Madrid, Espagne', country_id: espagne.id, urbain: true, )
activity5.photo.attach(io: file, filename: 'activity5.png', content_type: 'image/png')
activity5.save

puts "Created #{activity5.name}"

puts "Finished"


# url = "https://restcountries.eu/rest/v2/all"
# repo = open(url).read()
# ending = JSON.parse(repo)
# puts ending[0]["name"]
