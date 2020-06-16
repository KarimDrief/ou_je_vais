require "open-uri"
puts "Cleaning database..."
Country.destroy_all
Activity.destroy_all

puts 'Creating COUNTRIES...'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592213189/9rmwhptmu0oiw1ca3ontb40mrz4f.jpg')
angleterre = Country.new(
  quarantine_rules: 'test description',
  active_quarantine: 14,
  name: 'Angleterre',
  description: "Voici ce qu'on dit de l'Angleterre,La bière y est plus amère, les pièces de monnaie plus grosses, l'herbe plus verte, les dimanches plus tristes et les cimetières plus gais.  Des explorateurs hardis nous certifient que l'Angleterre est une île au climat pluvieux et maritimes où, les soirs d'automne, on peut voir de vieilles demoiselles se rendre à l'office du soir à bicyclette.")
  angleterre.photo.attach(io: file, filename: 'angleterre.png', content_type: 'image/png')
  angleterre.save

  puts "Created #{angleterre.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591816233/chris-karidis-nnzkZNYWHaU-unsplash_nrxrvy.jpg')
france = Country.new(name: 'France', description: "Pays de l'amour, du vin et de la bonne cuisine, la France compte parmis 35 sites inscrits au Patrimoine Mondial de l'UNESCO", quarantine_rules:"Dès votre arrivée sur le territoire, vous pouvez vous déplacer librement",
  active_quarantine: 0)
france.photo.attach(io: file, filename: 'france.png', content_type: 'image/png')
france.save

puts "Created #{france.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591872576/florian-wehde-WBGjg0DsO_g-unsplash_lnyd3k.jpg')
espagne = Country.new(name: 'Espagne', description: "Fiesta, Tapas & Flamenco" , quarantine_rules: "Un des pays les plus touchés par l'épidémie du covid-19 ! Vous ne pouvez pas voyager à Espagne avant fin 2020",
  active_quarantine: nil )
espagne.photo.attach(io: file, filename: 'espagne.png', content_type: 'image/png')
espagne.save

puts "Created #{espagne.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591873115/berlin_unatp0.jpg')
allemagne = Country.new(name: 'Allemagne', description: "Située au cœur du vieux continent, l'Allemagne est composée de 16 États et est réputée pour être la plus grande économie nationale d'Europe et l'une des plus importantes au monde. ... Habituellement, quand on dit 'Allemagne', les premières choses qui viennent à l'esprit des gens sont Hitler, le mur de Berlin et la bière.", quarantine_rules:"Pas de régles de quarantaine",
  active_quarantine: 0)
allemagne.photo.attach(io: file, filename: 'allemagne.png', content_type: 'image/png')
allemagne.save

puts "Created #{allemagne.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591876935/istanbul_u2atxn.jpg')
turquie = Country.new(name: 'Turquie', description: "La Turquie est connue pour avoir une grande variété et un grand type de lieux ! Des plages étonnantes à travers ses plus de 8000 km de côtes aux grandes chaînes de montagnes, dont le Mont Arat (plus de 5000 mètres). Vous pouvez également vous rendre dans des endroits comme Istanbul ou Ankara qui sont les villes les plus célèbres de Turquie à visiter.", quarantine_rules:"Pas de régles de quarantaine",
  active_quarantine: 0)
turquie.photo.attach(io: file, filename: 'turquie.png', content_type: 'image/png')
turquie.save

puts "Created #{turquie.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592322792/lisbonne_2_s3ilt7.jpg')
portugal= Country.new(name: 'maroc', description: "Le portugalest un pays de traditions. Ici la modernité se conjugue toujours avec le passé. Les modes de vie et l'organisation sociale restent intimement liés aux habitudes et aux coutumes. Pour les touristes, le dépaysement est donc toujours au rendez-vous. Lorsqu'on pénètre dans la vieille ville, s'ouvre ainsi un autre monde...", quarantine_rules:"Pas de régles de quarantaine",
  active_quarantine: 0)
portugal.photo.attach(io: file, filename: 'portugal.png', content_type: 'image/png')
portugal.save

puts "Created #{portugal.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591877511/amsterdam_oiujec.jpg')
pays_bas = Country.new(name: 'Pays-Bas', description: "Si vous pensez à la Hollande, vous pensez probablement aux tulipes, aux moulins et au fromage. Vous retrouverez ces icônes et bien d'autres dans tous les Pays-Bas",
  quarantine_rules:"Aucune règle de quarantaine, mais vous devez réserver votre logement de vacances à l'avance. Sans réservation valable, l'entrée peut vous être refusée à la frontière", active_quarantine: nil)
pays_bas.photo.attach(io: file, filename: 'pays_bas.png', content_type: 'image/png')
pays_bas.save

puts "Created #{pays_bas.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591877516/Athe%CC%81nes_ezxazh.jpg')
grèce = Country.new(name: 'Grèce', description: "Célèbre pour avoir été le berceau de la démocratie, de la création des Jeux olympiques, et pour son architecture unique et historique. L'Acropole d'Athènes, le Sanctuaire de Delphes et le Théâtre antique d'Epidaure en sont quelques exemples",
quarantine_rules:" Le gouvernement a annoncé que la période de tourisme international débutera le 15 juin en grèce. Les vols internationaux directs vers les destinations touristiques en grèce vont progressivement reprendre à partir du 1er juillet", active_quarantine: 0)
grèce.photo.attach(io: file, filename: 'grèce.png', content_type: 'image/png')
grèce.save

puts "Created #{grèce.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592315539/italie_l0ntll.jpg')
italie = Country.new(name: 'italie', description: "L’Italie, ce sont des paysages à couper le souffle, des monuments tout aussi époustouflants et un accueil chaleureux au son de l’accent si agréable des habitants. C’est également la cuisine, internationalement réputée.",
quarantine_rules:" Le gouvernement a annoncé que la période de tourisme international débutera le 15 juin en italie. Les vols internationaux directs vers les destinations touristiques en italie vont progressivement reprendre à partir du 1er juillet", active_quarantine: 0)
italie.photo.attach(io: file, filename: 'italie.png', content_type: 'image/png')
italie.save

puts "Created #{italie.name}"
puts "finish"

puts 'Creating Cities'


puts 'Creating England cities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592245432/londres2_shctlv.jpg')
londres = City.new(name: "Londres", country_id: angleterre.id)
londres.photo.attach(io: file, filename: 'Londres.png', content_type: 'image/png')
londres.save

puts "Created #{londres.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592320764/liverpool_hjrcea.jpg')
liverpool = City.new(name: "liverpool", country_id: angleterre.id)
liverpool.photo.attach(io: file, filename: 'liverpool.png', content_type: 'image/png')
liverpool.save

puts "Created #{liverpool.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592320819/manchester_vdzjch.jpg')
manchester = City.new(name: "manchester", country_id: angleterre.id)
manchester.photo.attach(io: file, filename: 'manchester.png', content_type: 'image/png')
manchester.save

puts "Created #{manchester.name}"
puts "Finish English cities"

puts "Creating French cities"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
paris = City.new(name: "Paris", country_id: france.id)
paris.photo.attach(io: file, filename: 'paris.png', content_type: 'image/png')
paris.save

puts "Created #{paris.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592320917/erwan-martin-REd5hIg4iZc-unsplash_sm5kh1.jpg')
lyon = City.new(name: "lyon", country_id: france.id)
lyon.photo.attach(io: file, filename: 'lyon.png', content_type: 'image/png')
lyon.save

puts "Created #{lyon.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592321192/marseille_u6gpfz.jpg')
marseille = City.new(name: "marseille", country_id: france.id)
marseille.photo.attach(io: file, filename: 'marseille.png', content_type: 'image/png')
marseille.save

puts "Created #{marseille.name}"
puts "Finish french cities"

puts 'Creating italian cities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592321212/rome_eidumw.jpg')
rome = City.new(name: "rome", country_id: italie.id)
rome.photo.attach(io: file, filename: 'rome.png', content_type: 'image/png')
rome.save

puts "Created #{rome.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592321240/florence_crnveb.jpg')
florence = City.new(name: "florence", country_id: italie.id)
florence.photo.attach(io: file, filename: 'florence.png', content_type: 'image/png')
florence.save

puts "Created #{florence.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592321260/venise_oqjyfb.jpg')
venise = City.new(name: "venise", country_id: italie.id)
venise.photo.attach(io: file, filename: 'venise.png', content_type: 'image/png')
venise.save

puts "Created #{venise.name}"
puts 'Finish italian cities'

puts 'Creating spanish cities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592321286/madrid_2_zgynkz.jpg')
madrid = City.new(name: "madrid", country_id: espagne.id)
madrid.photo.attach(io: file, filename: 'madrid.png', content_type: 'image/png')
madrid.save

puts "Created #{madrid.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592321527/barcelone_ccufru.jpg')
barcelone = City.new(name: "barcelone", country_id: espagne.id)
barcelone.photo.attach(io: file, filename: 'barcelone.png', content_type: 'image/png')
barcelone.save

puts "Created #{barcelone.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592321545/valence_un4zt7.jpg')
valence = City.new(name: "valence", country_id: espagne.id)
valence.photo.attach(io: file, filename: 'valence.png', content_type: 'image/png')
valence.save

puts "Created #{valence.name}"
puts 'Finish spanish cities'

puts "Creating german cities"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592321602/berlin_zxepqk.jpg')
berlin = City.new(name: "berlin", country_id: allemagne.id)
berlin.photo.attach(io: file, filename: 'berlin.png', content_type: 'image/png')
berlin.save

puts "Created #{berlin.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592321985/munich_tskkyg.jpg')
munich = City.new(name: "munich", country_id: allemagne.id)
munich.photo.attach(io: file, filename: 'munich.png', content_type: 'image/png')
munich.save

puts "Created #{munich.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592322031/cologne_yqec7o.jpg')
cologne = City.new(name: "cologne", country_id: allemagne.id)
cologne.photo.attach(io: file, filename: 'cologne.png', content_type: 'image/png')
cologne.save

puts "Created #{cologne.name}"
puts 'finish german cities'

puts 'Creating turkish cities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592322045/istanbul_dmtzkh.jpg')
istanbul = City.new(name: "istanbul", country_id: turquie.id)
istanbul.photo.attach(io: file, filename: 'istanbul.png', content_type: 'image/png')
istanbul.save

puts "Created #{istanbul.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592322101/ankara_udoqgn.jpg')
ankara = City.new(name: "ankara", country_id: turquie.id)
ankara.photo.attach(io: file, filename: 'ankara.png', content_type: 'image/png')
ankara.save

puts "Created #{ankara.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592322221/antalya_pcwh02.jpg')
antalya = City.new(name: "antalya", country_id: turquie.id)
antalya.photo.attach(io: file, filename: 'antalya.png', content_type: 'image/png')
antalya.save

puts "Created #{antalya.name}"
puts 'finish turkish cities'

puts 'Creating netherland cities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592322316/amsterdam_2_wbfqt8.jpg')
amsterdam = City.new(name: "amsterdam", country_id: pays_bas.id)
amsterdam.photo.attach(io: file, filename: 'amsterdam.png', content_type: 'image/png')
amsterdam.save

puts "Created #{amsterdam.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592322416/rotterdam_x9vr9p.png')
rotterdam = City.new(name: "rotterdam", country_id: pays_bas.id)
rotterdam.photo.attach(io: file, filename: 'rotterdam.png', content_type: 'image/png')
rotterdam.save

puts "Created #{rotterdam.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592322471/la-haye_gahkci.jpg')
la_haye = City.new(name: "la_haye", country_id: pays_bas.id)
la_haye.photo.attach(io: file, filename: 'la_haye.png', content_type: 'image/png')
la_haye.save

puts "Created #{la_haye.name}"
puts 'finish netherland cities'

puts 'Creating greek cities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592322677/Athenes_j84th0.jpg')
athènes = City.new(name: "athènes", country_id: grèce.id)
athènes.photo.attach(io: file, filename: 'athènes.png', content_type: 'image/png')
athènes.save

puts "Created #{athènes.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592322632/santorin_o4x8o6.jpg')
santorin = City.new(name: "santorin", country_id: grèce.id)
santorin.photo.attach(io: file, filename: 'santorin.png', content_type: 'image/png')
santorin.save

puts "Created #{santorin.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592322735/mykonos_mxt8ps.jpg')
mykonos = City.new(name: "mykonos", country_id: grèce.id)
mykonos.photo.attach(io: file, filename: 'mykonos.png', content_type: 'image/png')
mykonos.save

puts "Created #{mykonos.name}"
puts 'finish greek cities'

puts "Creating portugal cities"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592316042/portugal_apbz2i.jpg')
lisbonne = City.new(name: "lisbonne", country_id: portugal.id)
lisbonne.photo.attach(io: file, filename: 'lisbonne.png', content_type: 'image/png')
lisbonne.save

puts "Created #{lisbonne.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592322906/porto_ppsenf.jpg')
porto = City.new(name: "porto", country_id: portugal.id)
porto.photo.attach(io: file, filename: 'porto.png', content_type: 'image/png')
porto.save

puts "Created #{porto.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1592322951/sintra_btdzwp.jpg')
sintra = City.new(name: "sintra", country_id: portugal.id)
sintra.photo.attach(io: file, filename: 'sintra.png', content_type: 'image/png')
sintra.save

puts "Created #{sintra.name}"
puts 'finish portugal cities'


puts " Creating activities"
puts 'Creating france activities'

puts 'Creating paris activities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
tour_eiffel = Activity.new(name: "Tour Eiffel", description:"Visiter la tour Eiffel reste pour la plupart de nos visiteurs un souvenir fort. La Tour est aussi un des monuments payants les plus visités au monde, avec près de 7 millions de visiteurs par an. Il est donc préférable de bien s’organiser en amont, surtout si vous venez de loin, pour que l’expérience de visite de ce symbole de Paris et de la France reste la plus fluide possible, pour petits et grands !",
adress: "Champ de Mars, 5 Avenue Anatole France, 75007 Paris", city_id: paris.id, urbain: true)
tour_eiffel.photo.attach(io: file, filename: 'tour_eiffel.png', content_type: 'image/png')
tour_eiffel.save

puts "Created #{tour_eiffel.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
montmartre = Activity.new(name: "Montmartre", description:"Montmartre, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: paris.id, urbain: true)
montmartre.photo.attach(io: file, filename: 'montmartre.png', content_type: 'image/png')
montmartre.save

puts "Created #{montmartre.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
louvre = Activity.new(name: "louvre", description:"louvre, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: paris.id, urbain: true)
louvre.photo.attach(io: file, filename: 'louvre.png', content_type: 'image/png')
louvre.save

puts "Created #{louvre.name}"
puts "finish created paris activities"

puts 'Creating lyon activities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
vieux_lyon = Activity.new(name: "vieux lyon", description:"vieux_lyon, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: lyon.id, urbain: true)
vieux_lyon.photo.attach(io: file, filename: 'vieux_lyon.png', content_type: 'image/png')
vieux_lyon.save

puts "Created #{vieux_lyon.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
fourvière = Activity.new(name: "Basilique de Fourvière", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: lyon.id, urbain: true)
fourvière.photo.attach(io: file, filename: 'fourvière.png', content_type: 'image/png')
fourvière.save

puts "Created #{fourvière.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
parc_tête_dor = Activity.new(name: "Parc de la tête d'or", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: lyon.id, urbain: true)
fourvière.photo.attach(io: file, filename: 'fourvière.png', content_type: 'image/png')
fourvière.save

puts "Created #{parc_tête_dor.name}"
puts 'finish created lyon activities'

puts 'Creating marseille activities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
calanques = Activity.new(name: "Parc de la tête d'or", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: marseille.id, urbain: true)
calanques.photo.attach(io: file, filename: 'calanques.png', content_type: 'image/png')
calanques.save

puts "Created #{calanques.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
notre_dame_de_la_garde = Activity.new(name: "Basilique Notre-Dame de la Garde", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: marseille.id, urbain: true)
notre_dame_de_la_garde.photo.attach(io: file, filename: 'notre_dame_de_la_garde.png', content_type: 'image/png')
notre_dame_de_la_garde.save

puts "Created #{notre_dame_de_la_garde.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
vieux_port = Activity.new(name: "Balade sur le vieux port", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: marseille.id, urbain: true)
vieux_port.photo.attach(io: file, filename: 'vieux_port.png', content_type: 'image/png')
vieux_port.save

puts "Created #{vieux_port.name}"
puts 'finish created marseille activities'


puts 'Creating angleterre activities'
puts 'Creating londres activities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
london_eye = Activity.new(name: "Visite du London Eye", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: londres.id, urbain: true)
london_eye.photo.attach(io: file, filename: 'london_eye.png', content_type: 'image/png')
london_eye.save

puts "Created #{london_eye.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
hyde_park = Activity.new(name: "Se promener dans Hyde park", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: londres.id, urbain: true)
hyde_park.photo.attach(io: file, filename: 'hyde_park.png', content_type: 'image/png')
hyde_park.save

puts "Created #{hyde_park.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
piccadilly_circus = Activity.new(name: "Se perdre dans Piccadilly circus", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: londres.id, urbain: true)
piccadilly_circus.photo.attach(io: file, filename: 'piccadilly_circus.png', content_type: 'image/png')
piccadilly_circus.save

puts "Created #{piccadilly_circus.name}"
puts 'finish londres activities'

puts 'Creating manchester activities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
chinatown = Activity.new(name: "Se perdre dans Piccadilly circus", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: manchester.id, urbain: true)
chinatown.photo.attach(io: file, filename: 'chinatown.png', content_type: 'image/png')
chinatown.save

puts "Created #{chinatown.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
heaton_park = Activity.new(name: "Se perdre dans Piccadilly circus", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: manchester.id, urbain: true)
heaton_park.photo.attach(io: file, filename: 'heaton_park.png', content_type: 'image/png')
heaton_park.save

puts "Created #{heaton_park.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
salford_quays = Activity.new(name: "Se perdre dans Piccadilly circus", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: manchester.id, urbain: true)
salford_quays.photo.attach(io: file, filename: 'salford_quays.png', content_type: 'image/png')
salford_quays.save

puts "Created #{salford_quays.name}"
puts 'finish manchester activities'

puts 'Creating liverpool activities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
albert_dock = Activity.new(name: "Se perdre dans Piccadilly circus", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: liverpool.id, urbain: true)
albert_dock.photo.attach(io: file, filename: 'albert_dock.png', content_type: 'image/png')
albert_dock.save

puts "Created #{albert_dock.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
royal_liver_building = Activity.new(name: "Se perdre dans Piccadilly circus", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: liverpool.id, urbain: true)
royal_liver_building.photo.attach(io: file, filename: 'royal_liver_building.png', content_type: 'image/png')
royal_liver_building.save

puts "Created #{royal_liver_building.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
anfield_road = Activity.new(name: "Se perdre dans Piccadilly circus", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: liverpool.id, urbain: true)
anfield_road.photo.attach(io: file, filename: 'anfield_road.png', content_type: 'image/png')
anfield_road.save

puts "Created #{anfield_road.name}"

puts 'finish liverpool activities'
puts 'finish angleterre activities'

puts 'Creating italie activities'

puts 'Creating rome activities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
colisée = Activity.new(name: "Visite du colisée", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: rome.id, urbain: true)
colisée.photo.attach(io: file, filename: 'colisée.png', content_type: 'image/png')
colisée.save

puts "Created #{colisée.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
fontaine_de_trevi = Activity.new(name: "Visite du fontaine_de_trevi", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: rome.id, urbain: true)
fontaine_de_trevi.photo.attach(io: file, filename: 'fontaine_de_trevi.png', content_type: 'image/png')
fontaine_de_trevi.save

puts "Created #{fontaine_de_trevi.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
piazza_navona = Activity.new(name: "Visite du piazza_navona", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: rome.id, urbain: true)
piazza_navona.photo.attach(io: file, filename: 'piazza_navona.png', content_type: 'image/png')
piazza_navona.save

puts "Created #{piazza_navona.name}"
puts 'finish rome activities'

puts 'Creating florence activities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
santa_maria_del_fiore = Activity.new(name: "Visite du santa_maria_del_fiore", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: florence.id, urbain: true)
santa_maria_del_fiore.photo.attach(io: file, filename: 'santa_maria_del_fiore.png', content_type: 'image/png')
santa_maria_del_fiore.save

puts "Created #{santa_maria_del_fiore.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
ponte_vecchio = Activity.new(name: "Visite du ponte_vecchio", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: florence.id, urbain: true)
ponte_vecchio.photo.attach(io: file, filename: 'ponte_vecchio.png', content_type: 'image/png')
ponte_vecchio.save

puts "Created #{ponte_vecchio.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
galleria_florence = Activity.new(name: "Visite du galleria_florence", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: florence.id, urbain: true)
galleria_florence.photo.attach(io: file, filename: 'galleria_florence.png', content_type: 'image/png')
galleria_florence.save

puts "Created #{galleria_florence.name}"
puts 'finish florence activities'

puts 'Creating venise activities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
basilique_saint_marc = Activity.new(name: "Visite du basilique_saint_marc", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: venise.id, urbain: true)
basilique_saint_marc.photo.attach(io: file, filename: 'basilique_saint_marc.png', content_type: 'image/png')
basilique_saint_marc.save

puts "Created #{basilique_saint_marc.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
piazza_san_marco = Activity.new(name: "Visite du piazza_san_marco", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: venise.id, urbain: true)
piazza_san_marco.photo.attach(io: file, filename: 'piazza_san_marco.png', content_type: 'image/png')
piazza_san_marco.save

puts "Created #{piazza_san_marco.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
palais_des_doges = Activity.new(name: "Visite du palais_des_doges", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: venise.id, urbain: true)
palais_des_doges.photo.attach(io: file, filename: 'palais_des_doges.png', content_type: 'image/png')
palais_des_doges.save

puts "Created #{palais_des_doges.name}"

puts 'finish venise activities'
puts 'finish italie activities'

puts 'Creating espagne activities'
puts 'Creating madrid activities'


file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
plaza_mayor = Activity.new(name: "Visite du plaza_mayor", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: madrid.id, urbain: true)
plaza_mayor.photo.attach(io: file, filename: 'plaza_mayor.png', content_type: 'image/png')
plaza_mayor.save

puts "Created #{plaza_mayor.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
parc_retiro = Activity.new(name: "Visite du parc_retiro", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: madrid.id, urbain: true)
parc_retiro.photo.attach(io: file, filename: 'parc_retiro.png', content_type: 'image/png')
parc_retiro.save

puts "Created #{parc_retiro.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
puerta_del_sol = Activity.new(name: "Visite du puerta_del_sol", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: madrid.id, urbain: true)
puerta_del_sol.photo.attach(io: file, filename: 'puerta_del_sol.png', content_type: 'image/png')
puerta_del_sol.save

puts "Created #{puerta_del_sol.name}"
puts 'finish madrid activities'

puts 'Creating barcelone activities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
parc_guell = Activity.new(name: "Visite du parc_guell", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: barcelone.id, urbain: true)
parc_guell.photo.attach(io: file, filename: 'parc_guell.png', content_type: 'image/png')
parc_guell.save

puts "Created #{parc_guell.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
la_rambla = Activity.new(name: "Visite du la_rambla", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: barcelone.id, urbain: true)
la_rambla.photo.attach(io: file, filename: 'la_rambla.png', content_type: 'image/png')
la_rambla.save

puts "Created #{la_rambla.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
quartier_gothique = Activity.new(name: "Visite du quartier_gothique", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: barcelone.id, urbain: true)
quartier_gothique.photo.attach(io: file, filename: 'quartier_gothique.png', content_type: 'image/png')
quartier_gothique.save

puts "Created #{quartier_gothique.name}"
puts 'finish barcelone activities'

puts 'Creating valence activities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
loge_de_la_soie = Activity.new(name: "Visite du loge_de_la_soie", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: valence.id, urbain: true)
loge_de_la_soie.photo.attach(io: file, filename: 'loge_de_la_soie.png', content_type: 'image/png')
loge_de_la_soie.save

puts "Created #{loge_de_la_soie.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
marche_central = Activity.new(name: "Visite du marche_central", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: valence.id, urbain: true)
marche_central.photo.attach(io: file, filename: 'marche_central.png', content_type: 'image/png')
marche_central.save

puts "Created #{marche_central.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
jardin_du_turia = Activity.new(name: "Visite du jardin_du_turia", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: valence.id, urbain: true)
jardin_du_turia.photo.attach(io: file, filename: 'jardin_du_turia.png', content_type: 'image/png')
jardin_du_turia.save

puts "Created #{jardin_du_turia.name}"
puts 'finish valence activities'

puts 'Creating allemagne activities'

puts 'Creating munich activities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
marienplatz = Activity.new(name: "Visite du marienplatz", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: munich.id, urbain: true)
marienplatz.photo.attach(io: file, filename: 'marienplatz.png', content_type: 'image/png')
marienplatz.save

puts "Created #{marienplatz.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
englischer_garden = Activity.new(name: "Visite du englischer_garden", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: munich.id, urbain: true)
englischer_garden.photo.attach(io: file, filename: 'englischer_garden.png', content_type: 'image/png')
englischer_garden.save

puts "Created #{englischer_garden.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
chateau_nymphenbourg = Activity.new(name: "Visite du chateau_nymphenbourg", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: munich.id, urbain: true)
chateau_nymphenbourg.photo.attach(io: file, filename: 'chateau_nymphenbourg.png', content_type: 'image/png')
chateau_nymphenbourg.save

puts "Created #{chateau_nymphenbourg.name}"
puts 'finish munich activities'

puts 'Creating berlin activities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
porte_brandebourg = Activity.new(name: "Visite du porte_brandebourg", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: berlin.id, urbain: true)
porte_brandebourg.photo.attach(io: file, filename: 'porte_brandebourg.png', content_type: 'image/png')
porte_brandebourg.save

puts "Created #{porte_brandebourg.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
alexanderplatz = Activity.new(name: "Visite du alexanderplatz", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: berlin.id, urbain: true)
alexanderplatz.photo.attach(io: file, filename: 'alexanderplatz.png', content_type: 'image/png')
alexanderplatz.save

puts "Created #{alexanderplatz.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
potsdamer_platz = Activity.new(name: "Visite du potsdamer_platz", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: berlin.id, urbain: true)
potsdamer_platz.photo.attach(io: file, filename: 'potsdamer_platz.png', content_type: 'image/png')
potsdamer_platz.save

puts "Created #{potsdamer_platz.name}"
puts 'finish berlin activities'

puts 'Creating cologne activities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
cathédrale = Activity.new(name: "Visite du cathédrale", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: cologne.id, urbain: true)
cathédrale.photo.attach(io: file, filename: 'cathédrale.png', content_type: 'image/png')
cathédrale.save

puts "Created #{cathédrale.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
chocolate_musée = Activity.new(name: "Visite du chocolate_musée", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: cologne.id, urbain: true)
chocolate_musée.photo.attach(io: file, filename: 'chocolate_musée.png', content_type: 'image/png')
chocolate_musée.save

puts "Created #{chocolate_musée.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
chateaux = Activity.new(name: "Visite du chateaux", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: cologne.id, urbain: true)
chateaux.photo.attach(io: file, filename: 'chateaux.png', content_type: 'image/png')
chateaux.save

puts "Created #{chateaux.name}"
puts 'finish cologne activities'
puts 'finish allemagne activities'

puts 'Creating turquie activities'
puts 'Creating istanbul activities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
sainte_sophie = Activity.new(name: "Visite du sainte_sophie", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: istanbul.id, urbain: true)
sainte_sophie.photo.attach(io: file, filename: 'sainte_sophie.png', content_type: 'image/png')
sainte_sophie.save

puts "Created #{sainte_sophie.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
mosquée_bleue = Activity.new(name: "Visite du mosquée_bleue", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: istanbul.id, urbain: true)
mosquée_bleue.photo.attach(io: file, filename: 'mosquée_bleue.png', content_type: 'image/png')
mosquée_bleue.save

puts "Created #{mosquée_bleue.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
grand_bazar = Activity.new(name: "Visite du grand_bazar", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: istanbul.id, urbain: true)
grand_bazar.photo.attach(io: file, filename: 'grand_bazar.png', content_type: 'image/png')
grand_bazar.save

puts "Created #{grand_bazar.name}"
puts 'finish istanbul activities'

puts 'Creating antalya activities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
chutes_duden = Activity.new(name: "Visite du chutes_duden", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: antalya.id, urbain: true)
chutes_duden.photo.attach(io: file, filename: 'chutes_duden.png', content_type: 'image/png')
chutes_duden.save

puts "Created #{chutes_duden.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
porte_hadrien = Activity.new(name: "Visite du porte_hadrien", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: antalya.id, urbain: true)
porte_hadrien.photo.attach(io: file, filename: 'porte_hadrien.png', content_type: 'image/png')
porte_hadrien.save

puts "Created #{porte_hadrien.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
konyaaalti_beach = Activity.new(name: "Visite du konyaaalti_beach", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: antalya.id, urbain: true)
konyaaalti_beach.photo.attach(io: file, filename: 'konyaaalti_beach.png', content_type: 'image/png')
konyaaalti_beach.save

puts "Created #{konyaaalti_beach.name}"
puts 'finish antalya activities'

puts 'Creating ankara activities'

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
musée_civilisations = Activity.new(name: "Visite du musée_civilisations", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: ankara.id, urbain: true)
musée_civilisations.photo.attach(io: file, filename: 'musée_civilisations.png', content_type: 'image/png')
musée_civilisations.save

puts "Created #{musée_civilisations.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
anitkabir = Activity.new(name: "Visite du anitkabir", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: ankara.id, urbain: true)
anitkabir.photo.attach(io: file, filename: 'anitkabir.png', content_type: 'image/png')
anitkabir.save

puts "Created #{anitkabir.name}"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591889824/tour_eiffel_jtjjbv.jpg')
citadelle = Activity.new(name: "Visite du citadelle", description:"fourvière, un authentique village au cœur de Paris",
adress: "75018 Paris", city_id: ankara.id, urbain: true)
citadelle.photo.attach(io: file, filename: 'citadelle.png', content_type: 'image/png')
citadelle.save

puts "Created #{citadelle.name}"
puts 'finish ankara activities'
puts 'finish turquie activities'



