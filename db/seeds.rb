# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


puts "Salut mec !"
Participation.destroy_all
puts "Attends 2 sec j'arrive"
Event.destroy_all
UserGame.destroy_all
puts "Je vais chercher un MAC à Commerce"
Friend.destroy_all
FeedActivity.destroy_all
puts "Re, du coup je disais quoi ?"
User.destroy_all
puts "AH oui ! Salut mec !"
Game.destroy_all
puts "T'es un ouf toi ?"

julienv = User.new(first_name: 'julien', last_name: 'victor', email: 'jvictor@exemple.com', password: 'secret', bio: "Passionné par les constructions dans Minecraft", steam_username: "KillBill92", xboxlive_username: "KillBilly")
julienv_image = File.open(Rails.root.join("db/fixtures/users/julienv.jpeg"))
julienv.photo.attach(io: julienv_image, filename: "julienv.jpeg")
julienv.save!

# Personnages
alice = User.new(first_name: 'Alice', last_name: 'Grandchamp', email: 'alice@exemple.com', password: 'secret', bio: "Je joue sans prétention à plusieurs FPS dont Counter Strike", steam_username: "alice")
alice_image = File.open(Rails.root.join("db/fixtures/users/alice.png"))
alice.photo.attach(io: alice_image, filename: "alice.png")
alice.save!

bob = User.new(first_name: 'Bob', last_name: 'Lennon', email: 'bob@exemple.com', password: 'secret', bio: "Hello les gamers, c'est Bob. N'hésitez pas à m'inviter pour jouer à Fortnite ou Call of !", steam_username: "bob", psn_username: "BobbyPlay")
bob_image = File.open(Rails.root.join("db/fixtures/users/bob.png"))
bob.photo.attach(io: bob_image, filename: "bob.png")
bob.save!

# Julien users for the search in the list
count = (1..15)
count.each do |n|
  user = User.new(
    first_name: "Julien",
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'secret'
  )
  user_image = File.open(Rails.root.join("db/fixtures/users/#{n}.jpg"))
  user.photo.attach(io: user_image, filename: "#{n}.jpg")
  user.save!
end

# Users
puts "J'ai tout détruit mon pote"

edouard = User.new(first_name: 'edouard', last_name: 'goisbault', email: 'edouard@exemple.com', bio: "J'sais pas pourquoi j'suis là. J'y suis bien donc j'y reste.", password: 'secret', steam_username: "eucalyptuus", psn_username: "eucalyptus340")
edouard_image = File.open(Rails.root.join("db/fixtures/users/edouard.jpeg"))
edouard.photo.attach(io: edouard_image, filename: "edouard.jpeg")
edouard.save!

fred = User.new(first_name: 'fred', last_name: 'gibert', email: 'fred@exemple.com', password: 'secret', psn_username: "Fred Locks")
fred_image = File.open(Rails.root.join("db/fixtures/users/fred.png"))
fred.photo.attach(io: fred_image, filename: "fred.png")
puts "0x450074 hacked by MACosX"
fred.save!

juliene = User.new(first_name: 'julien', last_name: 'evano', email: 'julien@exemple.com', password: 'secret', bio: "Hello les potes, ajoutez-moi sur My Games !", steam_username: "Juliano")
juliene_image = File.open(Rails.root.join("db/fixtures/users/juliene.jpeg"))
juliene.photo.attach(io: juliene_image, filename: "juliene.jpeg")
juliene.save!

puts "Comment ça va?"
# Games

fortnite = Game.new(name: "Fortnite", description: "Battle Royale : 100 joueurs se battent dans des espaces de plus en plus petits pour être le dernier en vie.", on_psn: true, on_xboxlive: true)
fortnite_image = File.open(Rails.root.join("db/fixtures/games/fortnite.jpg"))
fortnite.photo.attach(io: fortnite_image, filename: "fortnite.jpg")
fortnite.save!

callofduty = Game.new(name: "Call of Duty: Warzone", description: "Combat multijoueur entre 150 joueurs dans la ville de Verdansk.", on_steam: true, on_psn: true, on_xboxlive: true)
warzone_image = File.open(Rails.root.join("db/fixtures/games/warzone.jpeg"))
callofduty.photo.attach(io: warzone_image, filename: "warzone.jpeg")
callofduty.save!
puts "3..."
overwatch = Game.new(name: "Overwatch", description: "Coopération entre différentes classes représentées par différents personnages ayant chacun leurs capacités et particularités", on_psn: true, on_xboxlive: true)
overwatch_image = File.open(Rails.root.join("db/fixtures/games/overwatch.jpg"))
overwatch.photo.attach(io: overwatch_image, filename: "overwatch.jpg")
overwatch.save!

animalcross = Game.new(name: "Animal Crossing: New Horizons", description: "Simulation de vie dans laquelle le joueur emménage dans un village habité par des animaux anthropomorphes.", on_steam: true)
animal_crossing_image = File.open(Rails.root.join("db/fixtures/games/animal_crossing.jpg"))
animalcross.photo.attach(io: animal_crossing_image, filename: "animal_crossing.jpg")
animalcross.save!
puts "2..."

gta = Game.new(name: "Grand Theft Auto V", description: "Incarnation d'un criminel qui évolue grâce aux missions qui lui sont données.", on_psn: true, on_xboxlive: true)
gta5_image = File.open(Rails.root.join("db/fixtures/games/gta5.jpg"))
gta.photo.attach(io: gta5_image, filename: "gta5.jpg")
gta.save!

rocketleague = Game.new(name: "Rocket League", description: "Deux équipes, composée de un à quatre joueurs conduisant des voitures, doivent frapper un ballon afin de marquer dans le but adverse.", on_psn: true, on_xboxlive: true)
rocketleague_image = File.open(Rails.root.join("db/fixtures/games/rocketleague.jpg"))
rocketleague.photo.attach(io: rocketleague_image, filename: "rocketleague.jpg")
rocketleague.save!
puts "1..."
hearthstone = Game.new(name: "Hearthstone", description: " Bataille de cartes contre un joueur adverse sur un plateau de jeu virtuel.", on_psn: true, on_xboxlive: true)
hearthstone_image = File.open(Rails.root.join("db/fixtures/games/hearthstone.jpeg"))
hearthstone.photo.attach(io: hearthstone_image, filename: "hearthstone.jpeg")

pubg = Game.new(name: "PlayerUnknown's Battlegrounds", description: "Jeu de tir à la première personne et à la troisième personne de type joueur contre joueur dans lequel une centaine de joueurs se battent dans un battle royale.", on_psn: true, on_xboxlive: true)
pubg_image = File.open(Rails.root.join("db/fixtures/games/pubg.jpg"))
pubg.photo.attach(io: pubg_image, filename: "pubg.jpg")
pubg.save!
puts "Oups ! C'était une feinte ;)"

minecraft = Game.new(name: "Minecraft", description: "Jeu vidéo de type « bac à sable » (construction complètement libre).", on_psn: true, on_xboxlive: true)
minecraft_image = File.open(Rails.root.join("db/fixtures/games/minecraft.jpg"))
minecraft.photo.attach(io: minecraft_image, filename: "minecraft.jpg")
minecraft.save!

counter = Game.new(name: "Counter-Strike: Global Offensive", description: "Jeu de tir à la première personne multijoueur en ligne basé sur le jeu d'équipe.", on_steam: true, on_psn: true, on_xboxlive: true)
csgo_image = File.open(Rails.root.join("db/fixtures/games/csgo.jpg"))
counter.photo.attach(io: csgo_image, filename: "csgo.jpg")
counter.save!
puts "Allez tiens bon ! "

apex = Game.new(name: "Apex Legends", description: "Jeu vidéo de type battle royale", on_psn: true, on_xboxlive: true)
apex_image = File.open(Rails.root.join("db/fixtures/games/apex.jpg"))
apex.photo.attach(io: apex_image, filename: "apex.jpg")
apex.save!

teamfort = Game.new(name: "Team Fortress 2", description: "Jeu vidéo de tir à la première personne multijoueur en ligne", on_psn: true, on_xboxlive: true)
teamfortress2_image = File.open(Rails.root.join("db/fixtures/games/teamfortress2.png"))
teamfort.photo.attach(io: teamfortress2_image, filename: "teamfortress2.png")
teamfort.save!

fifa20 = Game.new(name: "FIFA 20", description: "Jeu vidéo de football", on_psn: true, on_xboxlive: true)
fifa20_image = File.open(Rails.root.join("db/fixtures/games/fifa20.jpg"))
fifa20.photo.attach(io: fifa20_image, filename: "fifa20.jpg")
fifa20.save!
puts "C'est bientôt fini "
dofus = Game.new(name: "Dofus", description: "Battle Royale multijoueur ou solo")
dofus_image = File.open(Rails.root.join("db/fixtures/games/dofus.jpg"))
dofus.photo.attach(io: dofus_image, filename: "dofus.jpg")
dofus.save!

lol = Game.new(name: "League of Legends", description: "Jeu vidéo de type arène de bataille en ligne")
lol_image = File.open(Rails.root.join("db/fixtures/games/lol.jpg"))
lol.photo.attach(io: lol_image, filename: "lol.jpg")
lol.save!
# Bob games
UserGame.create!(user: bob, game: fortnite)
UserGame.create!(user: bob, game: callofduty)
UserGame.create!(user: bob, game: minecraft)

# Alice games
UserGame.create!(user: alice, game: counter)

# Julien E games
UserGame.create!(user: juliene, game: callofduty)
UserGame.create!(user: juliene, game: fortnite)
UserGame.create!(user: juliene, game: minecraft)

puts "Allez tiens bon, c'est la fin !"
# Julien V games
usergame1 = UserGame.create!(user: julienv, game: dofus)
usergame4 = UserGame.create!(user: julienv, game: gta)
usergame8 = UserGame.create!(user: julienv, game: minecraft)

# Fred games
usergame2 = UserGame.create!(user: fred, game: callofduty)
usergame6 = UserGame.create!(user: fred, game: counter)
usergame9 = UserGame.create!(user: fred, game: fortnite)

# Edouard games
usergame3 = UserGame.create!(user: edouard, game: callofduty)
usergame5 = UserGame.create!(user: edouard, game: fortnite)
usergame7 = UserGame.create!(user: edouard, game: rocketleague)


# FRIENDS

Friend.create!(user1: julienv, user2: edouard)
Friend.create!(user1: julienv, user2: fred)
Friend.create!(user1: julienv, user2: bob)
Friend.create!(user1: julienv, user2: alice)

Friend.create!(user1: edouard, user2: fred)
Friend.create!(user1: edouard, user2: juliene)
Friend.create!(user1: edouard, user2: bob)
Friend.create!(user1: edouard, user2: alice)

Friend.create!(user1: fred, user2: juliene)
Friend.create!(user1: fred, user2: bob)
Friend.create!(user1: fred, user2: alice)


# EVENTS
fortnite_session = Event.create!(game: fortnite, user: edouard, description: "Top 1 ou rien", start_at: Time.now + 28.hours, end_at: Time.now + 29.hours )
Participation.create!(user: julienv, event: fortnite_session) # pending
Participation.create!(user: fred, event: fortnite_session, status: "accepted")
Participation.create!(user: juliene, event: fortnite_session) # pending

callofduty_session = Event.create!(game: callofduty, user: fred, description: "Que du kills", start_at: Time.now + 6.hours, end_at: Time.now + 8.hours)
Participation.create!(user: juliene, event: callofduty_session)
Participation.create!(user: edouard, event: callofduty_session)

minecraft2_session = Event.create!(game: minecraft, user: juliene, description: "Tuer des creepers", start_at: Time.now + 48.hours, end_at: Time.now + 49.hours)
Participation.create!(user: fred, event: minecraft2_session) # pending
Participation.create!(user: edouard, event: minecraft2_session, status: "accepted")

lol_session = Event.create!(game: lol, user: julienv, description: "Session détente avant de dormir", start_at: Time.now + 40.hours, end_at: Time.now + 42.hours )
Participation.create!(user: bob, event: lol_session) # pending
Participation.create!(user: fred, event: lol_session, status: "accepted")

minecraft_session = Event.create!(game: minecraft, user: bob, description: "Tuer des mobs", start_at: Time.now + 26.hours, end_at: Time.now + 27.hours)
Participation.create!(user: julienv, event: minecraft_session, status: "accepted")
Participation.create!(user: edouard, event: minecraft_session)

fifa20_session = Event.create!(game: fifa20, user: julienv, description: "Petit match entre pote", start_at: Time.now + 4.hours, end_at: Time.now + 5.hours)
Participation.create!(user: alice, event: fifa20_session, status: "accepted")

gta_session = Event.create!(game: gta, user: fred, description: "Partie à Los Santos", start_at: Time.now + 4.hours, end_at: Time.now + 5.hours)
Participation.create!(user: bob, event: gta_session, status: "accepted")


# FEED ACTIVITIES


# Sessions
FeedActivity.create!(content: usergame9, author: usergame9.user, receiver: juliene)
FeedActivity.create!(content: usergame2, author: usergame2.user, receiver: juliene)


FeedActivity.create!(content: fifa20_session, author: fifa20_session.user, receiver: bob)
FeedActivity.create!(content: fifa20_session, author: fifa20_session.user, receiver: fred)
FeedActivity.create!(content: fifa20_session, author: fifa20_session.user, receiver: edouard)

FeedActivity.create!(content: minecraft2_session, author: minecraft2_session.user, receiver: julienv)
FeedActivity.create!(content: minecraft2_session, author: minecraft2_session.user, receiver: edouard)
FeedActivity.create!(content: minecraft2_session, author: minecraft2_session.user, receiver: fred)

FeedActivity.create!(content: usergame5, author: usergame5.user, receiver: juliene)
FeedActivity.create!(content: lol_session, author: lol_session.user, receiver: fred)
FeedActivity.create!(content: lol_session, author: lol_session.user, receiver: edouard)

FeedActivity.create!(content: minecraft_session, author: minecraft_session.user, receiver: julienv)
FeedActivity.create!(content: minecraft_session, author: minecraft_session.user, receiver: edouard)
FeedActivity.create!(content: minecraft_session, author: minecraft_session.user, receiver: fred)

FeedActivity.create!(content: usergame3, author: usergame3.user, receiver: juliene)
FeedActivity.create!(content: callofduty_session, author: callofduty_session.user, receiver: juliene)
FeedActivity.create!(content: callofduty_session, author: callofduty_session.user, receiver: edouard)
FeedActivity.create!(content: callofduty_session, author: callofduty_session.user, receiver: julienv)
FeedActivity.create!(content: usergame7, author: usergame7.user, receiver: juliene)

FeedActivity.create!(content: fortnite_session, author: fortnite_session.user, receiver: julienv)
FeedActivity.create!(content: fortnite_session, author: fortnite_session.user, receiver: juliene)
FeedActivity.create!(content: fortnite_session, author: fortnite_session.user, receiver: fred)
FeedActivity.create!(content: usergame6, author: usergame6.user, receiver: juliene)

FeedActivity.create!(content: gta_session, author: gta_session.user, receiver: julienv)
FeedActivity.create!(content: gta_session, author: gta_session.user, receiver: juliene)
FeedActivity.create!(content: gta_session, author: gta_session.user, receiver: edouard)

# User Game

FeedActivity.create!(content: usergame2, author: usergame2.user, receiver: edouard)
FeedActivity.create!(content: usergame1, author: usergame3.user, receiver: edouard)
FeedActivity.create!(content: usergame4, author: usergame5.user, receiver: edouard)
FeedActivity.create!(content: usergame6, author: usergame6.user, receiver: edouard)
FeedActivity.create!(content: usergame8, author: usergame7.user, receiver: edouard)
FeedActivity.create!(content: usergame9, author: usergame9.user, receiver: edouard)

FeedActivity.create!(content: usergame1, author: usergame2.user, receiver: fred)
FeedActivity.create!(content: usergame3, author: usergame3.user, receiver: fred)
FeedActivity.create!(content: usergame5, author: usergame5.user, receiver: fred)
FeedActivity.create!(content: usergame4, author: usergame6.user, receiver: fred)
FeedActivity.create!(content: usergame7, author: usergame7.user, receiver: fred)
FeedActivity.create!(content: usergame8, author: usergame9.user, receiver: fred)

FeedActivity.create!(content: usergame2, author: usergame2.user, receiver: julienv)
FeedActivity.create!(content: usergame3, author: usergame3.user, receiver: julienv)
FeedActivity.create!(content: usergame5, author: usergame5.user, receiver: julienv)
FeedActivity.create!(content: usergame6, author: usergame6.user, receiver: julienv)
FeedActivity.create!(content: usergame7, author: usergame7.user, receiver: julienv)
FeedActivity.create!(content: usergame9, author: usergame9.user, receiver: julienv)

puts "Fini ! :)"
