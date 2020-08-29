# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying last seeds"
Participation.destroy_all
Event.destroy_all
UserGame.destroy_all
Friend.destroy_all
FeedActivity.destroy_all
User.destroy_all
Game.destroy_all

puts "Seeding of database"

# Users
puts "Creation of 5 Users ..."
julienv = User.create!(first_name: 'julien', last_name: 'victor', email: 'jvictor@exemple.com', password: 'secret')
julienv_image = File.open(Rails.root.join("db/fixtures/users/julienv.jpeg"))
julienv.photo.attach(io: julienv_image, filename: "julienv.jpeg")

edouard = User.create!(first_name: 'edouard', last_name: 'goisbault', email: 'edouard@exemple.com', password: 'secret')
edouard_image = File.open(Rails.root.join("db/fixtures/users/edouard.jpeg"))
edouard.photo.attach(io: edouard_image, filename: "edouard.jpeg")

fred = User.create!(first_name: 'fred', last_name: 'gibert', email: 'fred@exemple.com', password: 'secret')
fred_image = File.open(Rails.root.join("db/fixtures/users/fred.png"))
fred.photo.attach(io: fred_image, filename: "fred.png")

juliene = User.create!(first_name: 'julien', last_name: 'evano', email: 'jevano@exemple.com', password: 'secret')
juliene_image = File.open(Rails.root.join("db/fixtures/users/juliene.jpeg"))
juliene.photo.attach(io: juliene_image, filename: "juliene.jpeg")


# Personnages
alice = User.create!(first_name: 'Alice', last_name: 'Grandchamp', email: 'alice@exemple.com', password: 'secret', bio: "Je joue sans prétention à plusieurs FPS dont Counter Strike", steam_username: "alice")
alice_image = File.open(Rails.root.join("db/fixtures/users/alice.png"))
alice.photo.attach(io: alice_image, filename: "alice.png")

bob = User.create!(first_name: 'Bob', last_name: 'Lennon', email: 'bob@exemple.com', password: 'secret', bio: "Hello les gamers, c'est Bob. N'hésitez pas à m'inviter pour jouer à Fortnite ou Call of !", steam_username: "bob", psn_username: "BobbyPlay")
bob_image = File.open(Rails.root.join("db/fixtures/users/bob.png"))
bob.photo.attach(io: bob_image, filename: "bob.png")

# Games
puts "Creation of 15 Games ..."

fortnite = Game.create!(name: "Fortnite", description: "Battle Royale : 100 joueurs se battent dans des espaces de plus en plus petits pour être le dernier en vie.", on_psn: true, on_xboxlive: true)
fortnite_image = File.open(Rails.root.join("db/fixtures/games/fortnite.jpg"))
fortnite.photo.attach(io: fortnite_image, filename: "fortnite.jpg")

callofduty = Game.create!(name: "Call of Duty: Warzone", description: "Combat multijoueur entre 150 joueurs dans la ville de Verdansk.", on_steam: true, on_psn: true, on_xboxlive: true)
warzone_image = File.open(Rails.root.join("db/fixtures/games/warzone.jpeg"))
callofduty.photo.attach(io: warzone_image, filename: "warzone.jpeg")

overwatch = Game.create!(name: "Overwatch", description: "Coopération entre différentes classes représentées par différents personnages ayant chacun leurs capacités et particularités", on_psn: true, on_xboxlive: true)
overwatch_image = File.open(Rails.root.join("db/fixtures/games/overwatch.jpg"))
overwatch.photo.attach(io: overwatch_image, filename: "overwatch.jpg")

animalcross = Game.create!(name: "Animal Crossing: New Horizons", description: "Simulation de vie dans laquelle le joueur emménage dans un village habité par des animaux anthropomorphes.", on_steam: true)
animal_crossing_image = File.open(Rails.root.join("db/fixtures/games/animal_crossing.jpg"))
animalcross.photo.attach(io: animal_crossing_image, filename: "animal_crossing.jpg")

gta = Game.create!(name: "Grand Theft Auto V", description: "Incarnation d'un criminel qui évolue grâce aux missions qui lui sont données.", on_psn: true, on_xboxlive: true)
gta5_image = File.open(Rails.root.join("db/fixtures/games/gta5.jpg"))
gta.photo.attach(io: gta5_image, filename: "gta5.jpg")

rocketleague = Game.create!(name: "Rocket League", description: "Deux équipes, composée de un à quatre joueurs conduisant des voitures, doivent frapper un ballon afin de marquer dans le but adverse.", on_psn: true, on_xboxlive: true)
rocketleague_image = File.open(Rails.root.join("db/fixtures/games/rocketleague.jpg"))
rocketleague.photo.attach(io: rocketleague_image, filename: "rocketleague.jpg")

hearthstone = Game.create!(name: "Hearthstone", description: " Bataille de cartes contre un joueur adverse sur un plateau de jeu virtuel.", on_psn: true, on_xboxlive: true)
hearthstone_image = File.open(Rails.root.join("db/fixtures/games/hearthstone.jpeg"))
hearthstone.photo.attach(io: hearthstone_image, filename: "hearthstone.jpeg")

pubg = Game.create!(name: "PlayerUnknown's Battlegrounds", description: "Jeu de tir à la première personne et à la troisième personne de type joueur contre joueur dans lequel une centaine de joueurs se battent dans un battle royale.", on_psn: true, on_xboxlive: true)
pubg_image = File.open(Rails.root.join("db/fixtures/games/pubg.jpg"))
pubg.photo.attach(io: pubg_image, filename: "pubg.jpg")

minecraft = Game.create!(name: "Minecraft", description: "Jeu vidéo de type « bac à sable » (construction complètement libre).", on_psn: true, on_xboxlive: true)
minecraft_image = File.open(Rails.root.join("db/fixtures/games/minecraft.jpg"))
minecraft.photo.attach(io: minecraft_image, filename: "minecraft.jpg")

counter = Game.create!(name: "Counter-Strike: Global Offensive", description: "Jeu de tir à la première personne multijoueur en ligne basé sur le jeu d'équipe.", on_steam: true, on_psn: true, on_xboxlive: true)
csgo_image = File.open(Rails.root.join("db/fixtures/games/csgo.jpg"))
counter.photo.attach(io: csgo_image, filename: "csgo.jpg")

apex = Game.create!(name: "Apex Legends", description: "Jeu vidéo de type battle royale", on_psn: true, on_xboxlive: true)
apex_image = File.open(Rails.root.join("db/fixtures/games/apex.jpg"))
apex.photo.attach(io: apex_image, filename: "apex.jpg")

teamfort = Game.create!(name: "Team Fortress 2", description: "Jeu vidéo de tir à la première personne multijoueur en ligne", on_psn: true, on_xboxlive: true)
teamfortress2_image = File.open(Rails.root.join("db/fixtures/games/teamfortress2.png"))
teamfort.photo.attach(io: teamfortress2_image, filename: "teamfortress2.png")

fifa20 = Game.create!(name: "FIFA 20", description: "Jeu vidéo de football", on_psn: true, on_xboxlive: true)
fifa20_image = File.open(Rails.root.join("db/fixtures/games/fifa20.jpg"))
fifa20.photo.attach(io: fifa20_image, filename: "fifa20.jpg")

dofus = Game.create!(name: "Dofus", description: "Battle Royale multijoueur ou solo")
dofus_image = File.open(Rails.root.join("db/fixtures/games/dofus.jpg"))
dofus.photo.attach(io: dofus_image, filename: "dofus.jpg")

lol = Game.create!(name: "League of Legends", description: "Jeu vidéo de type arène de bataille en ligne")
lol_image = File.open(Rails.root.join("db/fixtures/games/lol.jpg"))
lol.photo.attach(io: lol_image, filename: "lol.jpg")

# Bob games
puts "Assigning games to users..."
UserGame.create!(user: bob, game: fortnite)
UserGame.create!(user: bob, game: callofduty)
UserGame.create!(user: bob, game: minecraft)

# Alice games
UserGame.create!(user: alice, game: counter)

# Other user games
usergame1 = UserGame.create!(user: juliene, game: callofduty)
usergame2 = UserGame.create!(user: julienv, game: dofus)
UserGame.create!(user: fred, game: lol)
UserGame.create!(user: edouard, game: hearthstone)

UserGame.create!(user: juliene, game: apex)
UserGame.create!(user: julienv, game: gta)
usergame3 = UserGame.create!(user: fred, game: counter)
usergame4 = UserGame.create!(user: edouard, game: fortnite)

UserGame.create!(user: juliene, game: fifa20)
UserGame.create!(user: julienv, game: minecraft)
UserGame.create!(user: fred, game: fifa20)
UserGame.create!(user: edouard, game: minecraft)

# FRIENDS
puts "Creating friend associations..."

Friend.create!(user1: julienv, user2: edouard)
Friend.create!(user1: julienv, user2: fred)
Friend.create!(user1: julienv, user2: juliene)
Friend.create!(user1: julienv, user2: bob)
Friend.create!(user1: julienv, user2: alice)

Friend.create!(user1: edouard, user2: fred)
Friend.create!(user1: edouard, user2: juliene)
Friend.create!(user1: edouard, user2: bob)
Friend.create!(user1: edouard, user2: alice)

Friend.create!(user1: fred, user2: juliene)
Friend.create!(user1: fred, user2: bob)
Friend.create!(user1: fred, user2: alice)

# Friend.create!(user1: juliene, user2: bob)
# Friend.create!(user1: juliene, user2: alice)

# EVENTS
puts "Creating events & participations..."
fortnite_session = Event.create!(game: fortnite, user: bob, description: "Top 1 ou rien", start_at: Time.now + 24.hours, end_at: Time.now + 25.hours )
Participation.create!(user: julienv, event: fortnite_session) # pending
Participation.create!(user: fred, event: fortnite_session, status: "accepted")
Participation.create!(user: juliene, event: fortnite_session)

callofduty_session = Event.create!(game: callofduty, user: edouard, description: "Que du kills", start_at: Time.now + 25.hours, end_at: Time.now + 27.hours)
Participation.create!(user: juliene, event: callofduty_session, status: "accepted")
Participation.create!(user: bob, event: callofduty_session)

hearthstone_session = Event.create!(game: hearthstone, user: fred, description: "La stratégie avant tout", start_at: Time.now, end_at: Time.now + 2.hours )
Participation.create!(user: julienv, event: hearthstone_session) # pending
Participation.create!(user: bob, event: hearthstone_session, status: "accepted")
Participation.create!(user: juliene, event: hearthstone_session)

lol_session = Event.create!(game: lol, user: julienv, description: "Session détente avant de dormir", start_at: Time.now, end_at: Time.now + 2.hours )
Participation.create!(user: bob, event: lol_session) # pending
Participation.create!(user: fred, event: lol_session, status: "accepted")

minecraft_session = Event.create!(game: minecraft, user: edouard, description: "Construction de notre villa", start_at: Time.now + 2.hours, end_at: Time.now + 4.hours)
Participation.create!(user: julienv, event: minecraft_session, status: "accepted")
Participation.create!(user: bob, event: minecraft_session)

fifa20_session = Event.create!(game: fifa20, user: julienv, description: "Petit match entre pote", start_at: Time.now + 4.hours, end_at: Time.now + 5.hours)
Participation.create!(user: bob, event: fifa20_session, status: "accepted")


# FEED ACTIVITIES
puts "Creating feed activities..."
FeedActivity.create!(content: fortnite_session, author: fortnite_session.user, receiver: julienv)
FeedActivity.create!(content: fortnite_session, author: fortnite_session.user, receiver: fred)
FeedActivity.create!(content: fortnite_session, author: fortnite_session.user, receiver: juliene)

FeedActivity.create!(content: usergame1, author: usergame1.user, receiver: bob)
FeedActivity.create!(content: usergame2, author: usergame2.user, receiver: bob)

FeedActivity.create!(content: callofduty_session, author: callofduty_session.user, receiver: bob)
FeedActivity.create!(content: callofduty_session, author: callofduty_session.user, receiver: juliene)


FeedActivity.create!(content: usergame3, author: usergame3.user, receiver: bob)
FeedActivity.create!(content: usergame4, author: usergame4.user, receiver: bob)

FeedActivity.create!(content: hearthstone_session, author: hearthstone_session.user, receiver: julienv)
FeedActivity.create!(content: hearthstone_session, author: hearthstone_session.user, receiver: bob)
FeedActivity.create!(content: hearthstone_session, author: hearthstone_session.user, receiver: juliene)

FeedActivity.create!(content: lol_session, author: lol_session.user, receiver: juliene)
FeedActivity.create!(content: lol_session, author: lol_session.user, receiver: bob)

FeedActivity.create!(content: minecraft_session, author: minecraft_session.user, receiver: julienv)
FeedActivity.create!(content: minecraft_session, author: minecraft_session.user, receiver: bob)

FeedActivity.create!(content: fifa20_session, author: fifa20_session.user, receiver: bob)

puts "Good job !"
