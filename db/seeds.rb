# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Creation of database"

# Users
puts "Creation of 5 Users ..."
julienv = User.create!(first_name: 'julien', last_name: 'victor', email: 'jvictor@exemple.com', password: 'secret')
edouard = User.create!(first_name: 'edouard', last_name: 'goisbault', email: 'edouard@exemple.com', password: 'secret')
fred = User.create!(first_name: 'fred', last_name: 'gibert', email: 'fred@exemple.com', password: 'secret')
juliene = User.create!(first_name: 'julien', last_name: 'evano', email: 'jevano@exemple.com', password: 'secret')


# Personnages
alice = User.create!(first_name: 'Alice', last_name: 'Grandchamp', email: 'alice@exemple.com', password: 'secret', bio: "Je joue sans prétention à plusieurs FPS dont Counter Strike", steam_username: "alice")
bob = User.create!(first_name: 'Bob', last_name: 'Lennon', email: 'bob@exemple.com', password: 'secret', bio: "Hello les gamers, c'est Bob. N'hésitez pas à m'inviter pour jouer à Fortnite ou Call of !", steam_username: "bob", psn_username: "BobbyPlay")

# Games
puts "Creation of 15 Games ..."
fortnite = Game.create!(name: "Fortnite", description: "Battle Royale : 100 joueurs se battent dans des espaces de plus en plus petits pour être le dernier en vie.", on_psn: true, on_xboxlive: true)
callofduty = Game.create!(name: "Call of Duty: Warzone", description: "Combat multijoueur entre 150 joueurs dans la ville de Verdansk.", on_steam: true, on_psn: true, on_xboxlive: true)
overwatch = Game.create!(name: "Overwatch", description: "Coopération entre différentes classes représentées par différents personnages ayant chacun leurs capacités et particularités", on_psn: true, on_xboxlive: true)
animalcross = Game.create!(name: "Animal Crossing: New Horizons", description: "Simulation de vie dans laquelle le joueur emménage dans un village habité par des animaux anthropomorphes.", on_steam: true)
gta = Game.create!(name: "Grand Theft Auto V", description: "Incarnation d'un criminel qui évolue grâce aux missions qui lui sont données.", on_psn: true, on_xboxlive: true)
rocketleague = Game.create!(name: "Rocket League", description: "Deux équipes, composée de un à quatre joueurs conduisant des voitures, doivent frapper un ballon afin de marquer dans le but adverse.", on_psn: true, on_xboxlive: true)
hearthstone = Game.create!(name: "Hearthstone", description: " Bataille de cartes contre un joueur adverse sur un plateau de jeu virtuel.", on_psn: true, on_xboxlive: true)
pubg = Game.create!(name: "PlayerUnknown's Battlegrounds", description: "Jeu de tir à la première personne et à la troisième personne de type joueur contre joueur dans lequel une centaine de joueurs se battent dans un battle royale.", on_psn: true, on_xboxlive: true)
minecraft = Game.create!(name: "Minecraft", description: "Jeu vidéo de type « bac à sable » (construction complètement libre).", on_psn: true, on_xboxlive: true)
counter = Game.create!(name: "Counter-Strike: Global Offensive", description: "Jeu de tir à la première personne multijoueur en ligne basé sur le jeu d'équipe.", on_steam: true, on_psn: true, on_xboxlive: true)
apex = Game.create!(name: "Apex Legends", description: "Jeu vidéo de type battle royale", on_psn: true, on_xboxlive: true)
teamfort = Game.create!(name: "Team Fortress 2", description: "Jeu vidéo de tir à la première personne multijoueur en ligne", on_psn: true, on_xboxlive: true)
fifa20 = Game.create!(name: "FIFA 20", description: "Jeu vidéo de football", on_psn: true, on_xboxlive: true)
dofus = Game.create!(name: "Dofus", description: "Battle Royale multijoueur ou solo")
lol = Game.create!(name: "League of Legends", description: "Jeu vidéo de type arène de bataille en ligne")


# Bob games
puts "Assigning games to users..."
UserGame.create!(user: bob, game: fortnite)
UserGame.create!(user: bob, game: callofduty)
UserGame.create!(user: bob, game: minecraft)

# Alice games
UserGame.create!(user: alice, game: counter)

# Other user games
usergame1 = UserGame.create!(user: juliene, game: callofduty)
usergame2 = UserGame.create!(user: julienv, game: callofduty)
UserGame.create!(user: fred, game: callofduty)
UserGame.create!(user: edouard, game: callofduty)

UserGame.create!(user: juliene, game: fortnite)
UserGame.create!(user: julienv, game: fortnite)
usergame3 = UserGame.create!(user: fred, game: fortnite)
usergame4 = UserGame.create!(user: edouard, game: fortnite)

UserGame.create!(user: juliene, game: minecraft)
UserGame.create!(user: julienv, game: minecraft)
UserGame.create!(user: fred, game: minecraft)
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

Friend.create!(user1: juliene, user2: bob)
Friend.create!(user1: juliene, user2: alice)

# EVENTS
puts "Creating events & participations..."
fortnite_session = Event.create!(game: fortnite, user: bob, description: "Top 1 ou rien", start_at: Time.now, end_at: Time.now + 2.hours )
Participation.create!(user: julienv, event: fortnite_session) # pending
Participation.create!(user: fred, event: fortnite_session, status: "accepted")
Participation.create!(user: juliene, event: fortnite_session)

callofduty_session = Event.create!(game: callofduty, user: edouard, description: "Que du kills", start_at: Time.now, end_at: Time.now + 2.hours)
Participation.create!(user: juliene, event: callofduty_session, status: "accepted")
Participation.create!(user: bob, event: callofduty_session)


# FEED ACTIVITIES
puts "Creating feed activities..."
FeedActivity.create!(content: fortnite_session, author: fortnite_session.user, receiver: julienv)
FeedActivity.create!(content: fortnite_session, author: fortnite_session.user, receiver: fred)
FeedActivity.create!(content: fortnite_session, author: fortnite_session.user, receiver: juliene)

FeedActivity.create!(content: callofduty_session, author: callofduty_session.user, receiver: juliene)
FeedActivity.create!(content: callofduty_session, author: callofduty_session.user, receiver: bob)

FeedActivity.create!(content: usergame1, author: usergame1.user, receiver: bob)
FeedActivity.create!(content: usergame2, author: usergame2.user, receiver: bob)
FeedActivity.create!(content: usergame3, author: usergame3.user, receiver: bob)
FeedActivity.create!(content: usergame4, author: usergame4.user, receiver: bob)

# METTRE LES PHOTOS DES USERS


# METTRE LES PHOTOS DES JEUX

puts "Good job !"
