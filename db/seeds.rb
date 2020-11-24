# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Booking.destroy_all

puts "Cleaning database..."
CampingCar.destroy_all

puts "Cleaning database..."
User.destroy_all


walterwhite = User.new(name: "Walter White", email: "walter.white@gmail.com", password: "methmaker")
file = File.open(Rails.root.join('db/seeds/images/users/walterwhite.png'))
walterwite.avatar.attach(io: file, filename: 'walterwhite.png', content_type: 'image/png')
walterwite.save!
yanntarot = User.new(name: "Yann Tarot", email: "yann.tarot@gmail.com", password: "codeislife")
file = File.open(Rails.root.join('db/seeds/images/users/yanntarot.jpg'))
yanntarot.avatar.attach(io: file, filename: 'yanntarot.jpg', content_type: 'image/jpg')
yanntarot.save!
pierregroleau = User.new(name: "Pierre Groleau", email: "pgroleau@yahoo.fr", password: "iloveseeding")
file = File.open(Rails.root.join('db/seeds/images/users/pgroleau.jpg'))
pierregroleau.avatar.attach(io: file, filename: 'pgroleau.jpg', content_type: 'image/jpg')
pierregroleau.save!
davidtravailleur = User.new(name: "David Travailleur", email: "david.travailleur@gmail.com", password: "rugbylover")
file = File.open(Rails.root.join('db/seeds/images/users/davidtravailleur.jpg'))
davidtravailleur.avatar.attach(io: file, filename: 'davidtravailleur.jpg', content_type: 'image/jpg')
davidtravailleur.save!
jessypinkman = User.new(name: "Jessy Pinkman", email: "jessybitch@gmail.com", password: "cooklover")
file = File.open(Rails.root.join('db/seeds/images/users/jessepinkman.png'))
jessepinkman.avatar.attach(io: file, filename: 'jessepinkman.png', content_type: 'image/png')
jessepinkman.save!

puts 'Finished!'

puts 'Creating camping_cars...'

camping_car_california = CampingCar.new(owner: jessepinkman title: "Volkswagen California - Van aménagé ", category: "Van", description: "Ce van aménagé peut emmener jusqu'à 4 personnes en voyage, il est donc idéal pour les excursions en famille. La climatisation rend les trajets plus agréables lorsque les températures sont élevées. Parmi les autres équipements, on compte une boîte automatique, 4 roues motrices et un auvent.
Le véhicule dispose de 4 couchages : deux places dans le toit et 2 autres places à l'arrière grâce à la transformation de la banquette en lit.
Un évier, une gazinière 2 feux et un réfrigérateur se tiennent à disposition pour cuisiner. Un set de couverts est également disponible. La douche extérieure permet aux voyageurs de se rafraîchir.", brand: "Volkswagen", sleeps_capacity: "4 couchettes", price_per_day: 59, location: "44860 Saint-Aignan-Grandlieu")
file = File.open(Rails.root.join('db/seeds/images/camping_cars/California.jpg'))
camping_car_california.photo.attach(io: file, filename: 'California.jpg', content_type: 'image/jpg')
camping_car_california.save!

camping_car_rapido = CampingCar.new(owner: davidtravailleur title: "Rapido 9095DF - Grand Campingcar", category: "Intégral", description: "4 couchages et 2 places carte grise", brand: "Rapido", sleeps_capacity: "4 couchettes", price_per_day: 99, location: "36100 Issoudun")
file = File.open(Rails.root.join('db/seeds/images/camping_cars/Rapido.jpg'))
camping_car_rapido.photo.attach(io: file, filename: 'Rapido.jpg', content_type: 'image/jpg')
camping_car_rapido.save!

camping_car_fleetwood = CampingCar.new(owner: jessepinkman title: "Camping-car Intégral - Fleetwood Bounder", category: "Intégral", description: "4 couchages et 3 places
Bonjour à tous, alors envie d'escapade à petit budget avec un véhicule a bas prix ? alors Je suis là 'coucou', je suis un Fleetwood Bounder , avec direction assistée, GPS camping-car, etc ...
Idéal en famille ou entre amies car chacun a son coin à soi.
Je suis très bien dans le désert et très pratique pour la cuisine.", brand: "Fleetwood Bounder", sleeps_capacity: "4 couchettes", price_per_day: 50, location: "87105 Albuquerque ")
file = File.open(Rails.root.join('db/seeds/images/camping_cars/Fleetwood.jpg'))
camping_car_fleetwood.photo.attach(io: file, filename: 'Fleetwood.jpg', content_type: 'image/jpg')
camping_car_fleetwood.save!

camping_car_medium = CampingCar.new(owner: davidtravailleur title: "Camping-car Medium", category: "Profilé", description: "le modèle parfait pour 2 adultes et 2 enfants", brand: "Hobby", sleeps_capacity: "4 couchettes", price_per_day: "87€", location: "41350 Vineuil")
file = File.open(Rails.root.join('db/seeds/images/camping_cars/Medium.jpg'))
camping_car_medium.photo.attach(io: file, filename: 'Medium.jpg', content_type: 'image/jpg')
camping_car_medium.save!

camping_car_safari = CampingCar.new(owner: jessepinkman title: "VW Camper Safari Roof Tent", category: "Van", description: "This VW van camper, Sleeps 4 with 6 seats, 2 sleeping places inside on a double bed and 2 sleeping places in a cool roof tent with ladder on the outside of the vehcile. is ideal for families of 3/4 on a journey of discovery. Technical highlights include air conditioning, cruise control, and a radio with all kinds of connections. Extras such as an additional bike rack, and a sat-nav device can also be booked.
Inside to sleep, a comfortable double bed can be obtained from the rear bench seat. During the day, the campers can eat or relax here.
A practical camping kitchen, which has a sink and 2-burner stove is located at the rear of the van. A refrigerator, as well as various kitchen utensils and crockery, are also provided. The camper is equipped with an outside (cold) shower.", brand: "Volkswagen", sleeps_capacity: "4 couchettes", price_per_day: "78€", location: "33760 Frontenac")
file = File.open(Rails.root.join('db/seeds/images/camping_cars/camper.jpg'))
camping_car_safari.photo.attach(io: file, filename: 'camper.jpg', content_type: 'image/jpg')
camping_car_safari.save!

camping_car_chausson = CampingCar.new(owner: davidtravailleur title: "Chausson Titanium 610", category: "Profilé", description: "Chausson Titanium 610, configuration moderne avec lit de pavillon et lit dinette. 4 places carte grise et couchage, un grand salon lumineux, une belle cuisine fonctionnelle avec grand frigo/congélateur, partie sdb et wc spacieuse et même un dressing!
Une soute arrière pouvant recevoir facilement le mobilier de camping. Bien sûr panneau solaire, store extérieur et caméra de recul..
Vous pourrez stationner votre véhicule à mon domicile qui reste fermé.
Au plaisir...", brand: "Chausson", sleeps_capacity: "4 couchettes", price_per_day: "90€", location: "19005 Allasac")
file = File.open(Rails.root.join('db/seeds/images/camping_cars/Chausson.jpg'))
camping_car_chausson.photo.attach(io: file, filename: 'Chausson.jpg', content_type: 'image/jpg')
camping_car_chausson.save!

camping_car_benimar = CampingCar.new(owner: jessepinkman title: "Benimar Tessoro 495 - Neuf", category: "Profilé", description: "Très lumineux 5 places, 5 couchages. Ford 2,2 L. 155 CV. Profilé. (faible consommation)
COUCHAGES . Lit de pavillon plafonnier qui descend électriquement + lit central rétractable avec grands tiroirs. 5ème couchage au niveau de la dinette
Porte de séparation avec la chambre. CUISINE en L avec réchaud 3 feux et grand réfrigérateur automatique de 140 SDB : toilettes séparées de la douche (grande)
Télévision et DVD.", brand: "Benimar", sleeps_capacity: "5 couchettes", price_per_day: "95€", location: "49170 Saint-Martin-Du-Fouilloux")
file = File.open(Rails.root.join('db/seeds/images/camping_cars/Benimar.jpg'))
camping_car_benimar.photo.attach(io: file, filename: 'Benimar.jpg', content_type: 'image/jpg')
camping_car_benimar.save!

camping_car_itineo = CampingCar.new(owner: jessepinkman title: "Itinéo SB740 neuf de mars 2019 !", category: "Integral", description: "Bonjour, nous proposons notre magnifique Itinéo SB740 de mars 2019 à la location, pour vos loisirs en famille ou entre amis. Il dispose de 5 places assises carte grise et 7 couchages (dont 2 en option) : Au niveau des couchages: - un lit 'sur pavillon' pour 2 personnes (140x190cm) - deux lits 'superposés' dans la partie arrière (81x217cm) -
un lit 'sur dinette' transformable également dans la partie arrière (52x200cm) - un lit 'sur dinette' transformable pour 2 personnes dans le salon (130x200cm) (en option) Il possède sur l'arrière une chambre composée de 2 lits superposés ainsi que 2 sièges avec petite table transformable en 3ème lit ainsi que 2 penderies. Le grand plus de ce camping-car est la séparation entre la douche et le coin WC.
Autre plus, un grand espace de vie clair et spacieux avec ses banquettes très confortables ainsi qu'une belle cuisine équipée d'un grand réfrigérateur de 150L, réchaud 3 feux très agréable pour préparer des bons petits plats en totale autonomie. Il est équipé : - d'un porte 4 vélos - d'un panneau solaire 120W - d'un réservoir d'eau propre de 140l dont 20l uniquement pour prendre la route ce qui permet d'alléger la charge utile en respectant les 3.5T maxi -
d'un réservoir d'eau sale 120l - de moustiquaires sur toutes les fenêtres de la cellule avec stores occultant pour la nuit - d'un autoradio CD - téléphone bluetooth - d'une caméra de recul sur écran central - climatisation cabine - dispositif anti-démarrage - fermeture cabine centralisée - prise 220 volts - option GPS Garmin Camper 780 spécial camping-car moyennant 3€ par jour de location. À votre disposition : - vaisselle et ustensiles de cuisine - table et chaises de camping pour manger à l'extérieur sous le store -
rallonge, tuyau d'eau, tancarville.", brand: "Itinéo", sleeps_capacity: "5 couchettes", price_per_day: "93€", location: "85450 Puyravault")
file = File.open(Rails.root.join('db/seeds/images/camping_cars/Itineo.jpg'))
camping_car_itineo.photo.attach(io: file, filename: 'Itineo.jpg', content_type: 'image/jpg')
camping_car_itineo.save!

camping_car_ducato = CampingCar.new(owner: davidtravailleur title: "Ducato proche de la mer et de Brest", category: "Profilé", description: "Fiat Ducato camping-car très bien équipé, parfait pour des vacances en famille ou entre amis. 4 places assises et 5 couchettes.
Les animaux sont autorisées.", brand: "Ducato", sleeps_capacity: "5 couchettes", price_per_day: "85€", location: "29830 Saint-Pabu")
file = File.open(Rails.root.join('db/seeds/images/camping_cars/Ducato.jpg'))
camping_car_ducato.photo.attach(io: file, filename: 'Ducato.jpg', content_type: 'image/jpg')
camping_car_ducato.save!

camping_car_volkswagen = CampingCar.new(owner: davidtravailleur title: "Volkswagen California - Van aménagé pour 4 avec store", category: "Van", description: "Ce van aménagé peut emmener jusqu'à 4 personnes en voyage, il est donc idéal pour les excursions en famille. La climatisation rend les trajets plus agréables lorsque les températures sont élevées. Parmi les autres équipements, on compte une boîte automatique, 4 roues motrices et un auvent.
Le véhicule dispose de 4 couchages : deux places dans le toit et 2 autres places à l'arrière grâce à la transformation de la banquette en lit.
Un évier, une gazinière 2 feux et un réfrigérateur se tiennent à disposition pour cuisiner. Un set de couverts est également disponible. La douche extérieure permet aux voyageurs de se rafraîchir.", brand: "Volkswagen", sleeps_capacity: "4 couchettes", price_per_day: "59€", location: "33145 Saint-Jacques-de-la-Lande")
file = File.open(Rails.root.join('db/seeds/images/camping_cars/Volkswagen California 2.jpg'))
camping_car_volkswagen.photo.attach(io: file, filename: 'Volkswagen California 2.jpg', content_type: 'image/jpg')
camping_car_volkswagen.save!

camping_car_volkcalifornia = CampingCar.new(owner: davidtravailleur title: "Volkswagen T6 California - Van aménagé pour 4 personnes", category: "Van", description: "4 personnes peuvent voyager confortablement à bord de ce camping-car. Le store, le kit de vaisselle et le système son font partie des nombreux avantages qu'offre ce véhicule. Le système de climatisation maintient une température agréable à l'intérieur lorsqu'il fait chaud dehors.
Un lit double confortable se trouve sous le toit relevable. Le coin salon convertible fournit un couchage supplémentaire pour 2 autres personnes à l'arrière du véhicule.
La cuisine est équipée d'une plaque de cuisson 2 feux, d'un réfrigérateur et d'un évier et d'une table amovible.", brand: "Volkswagen", sleeps_capacity: "4 couchettes", price_per_day: "75€", location: "91330 Yerres")
file = File.open(Rails.root.join('db/seeds/images/camping_cars/Volkswagen California2.jpg'))
camping_car_volkcalifornia.photo.attach(io: file, filename: 'Volkswagen California2.jpg', content_type: 'image/jpg')
camping_car_volkcalifornia.save!


camping_car_autostar = CampingCar.new(owner: jessepinkman title: "Autostar Privilège", category: "Intégral", description: "Il est tout neuf et incroyablement confortable autant pour la conduite que dans l'espace de vie.
Une implantation idéale doublée d’une pléiade d’équipements, cet intégral avec lit milieu de soute offre également une très belle cuisine fonctionnelle et de nombreux rangements.
Nous offrons aussi une petite table, des tabourets, un lit de camp et 2 sofas gonflables (Canapés à air), un petit barbecue.
Nous sommes situés au coeur d'une région absolument magnifique, au peid du mont Bugarach. Il y a de nombreux camping et endroits sauvages qui n'attendent que vous. Horsmis la nature et les expéditions, vous avez aussi toute l'histoire des Cathares à découvrir ainsi que ses chateaux qui demeurent en très bon état.
Nous connaissons très bien la région et pouvons vous conseiller et vous donner une multitudes d'informations sur les divers activités et sites à découvrir.
Tout les éléments nécéssaires sont réunis pour faire de votre séjour des souvenirs inoubliables.", brand: "Autostar", sleeps_capacity: "4 couchettes", price_per_day: "140€", location: "11055 BUGARACH")
file = File.open(Rails.root.join('db/seeds/images/camping_cars/Autostar.jpg'))
camping_car_autostar.photo.attach(io: file, filename: 'Autostar.jpg', content_type: 'image/jpg')
camping_car_autostar.save!

puts 'Finished!'




Booking.create!(camping_car: camping_car_fleetwood, renter: walterwhite, start_date: "2020-12-14", end_date: "2021-01-04", total_price: 1000, status: "Pending" )
Booking.create!(camping_car: camping_car_ducato, renter: pierregroleau, start_date: "2021-02-16", end_date: "2021-02-23", total_price: 665, status: "Pending" )
Booking.create!(camping_car: camping_car_benimar, renter: pierregroleau, start_date: "2021-04-18", end_date: "2021-04-24", total_price: 665, status: "Refused" )
Booking.create!(camping_car: camping_car_autostar, renter: yanntarot, start_date: "2021-01-17", end_date: "2021-01-23", total_price: 980, status: "Approuved" )
Booking.create!(camping_car: camping_car_volkcalifornia, renter: yanntarot, start_date: "2020-12-12", end_date: "2020-12-19", total_price: 446, status: "Approuved" )
