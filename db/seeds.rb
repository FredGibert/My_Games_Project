# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

puts "Creation of database"

# Users
puts "Creation of 5 Users ..."
User.create!(first_name: 'julien', last_name: 'victor', email: 'jvictor@exemple.com', password: 'secret')
User.create!(first_name: 'edouard', last_name: 'goisbault', email: 'edouard@exemple.com', password: 'secret')
User.create!(first_name: 'fred', last_name: 'gibert', email: 'fred@exemple.com', password: 'secret')
User.create!(first_name: 'julien', last_name: 'evano', email: 'jevano@exemple.com', password: 'secret')

# Personnages
User.create!(first_name: 'Bob', last_name: 'Lennon', email: 'bob@exemple.com', password: 'secret', bio: "Hello les gamers, c'est Bob. N'hésitez pas à m'inviter pour jouer à Fortnite ou Call of !", steam_username: "bob", psn_username: "BobbyPlay")
User.create!(first_name: 'Alice', last_name: 'Grandchamp', email: 'alice@exemple.com', password: 'secret', bio: "Je joue sans prétention à plusieurs FPS dont Counter Strike", steam_username: "alice")


# Games
puts "Creation of 15 Games ..."
Game.create!(name: "Fortnite", description: "Battle Royale multijoueur ou solo", on_steam: true, on_psn: true, on_xboxlive: true)
Game.create!(name: "Call of Duty: Warzone", description: "Battle Royale multijoueur ou solo", on_steam: true, on_psn: true, on_xboxlive: true)
Game.create!(name: "Overwatch", description: "Battle Royale multijoueur ou solo", on_steam: true, on_psn: true, on_xboxlive: true)
Game.create!(name: "Animal Crossing: New Horizons", description: "Battle Royale multijoueur ou solo", on_steam: true, on_psn: true, on_xboxlive: true)
Game.create!(name: "Grand Theft Auto V", description: "Battle Royale multijoueur ou solo", on_steam: true, on_psn: true, on_xboxlive: true)
Game.create!(name: "Rocket League", description: "Battle Royale multijoueur ou solo", on_steam: true, on_psn: true, on_xboxlive: true)
Game.create!(name: "Hearthstone", description: "Battle Royale multijoueur ou solo", on_steam: true, on_psn: true, on_xboxlive: true)
Game.create!(name: "PlayerUnknown's Battlegrounds", description: "Battle Royale multijoueur ou solo", on_steam: true, on_psn: true, on_xboxlive: true)
Game.create!(name: "Minecraft", description: "Battle Royale multijoueur ou solo", on_steam: true, on_psn: true, on_xboxlive: true)
Game.create!(name: "Counter-Strike: Global Offensive", description: "Battle Royale multijoueur ou solo", on_steam: true, on_psn: true, on_xboxlive: true)
Game.create!(name: "Apex Legends", description: "Battle Royale multijoueur ou solo", on_steam: true, on_psn: true, on_xboxlive: true)
Game.create!(name: "Team Fortress 2", description: "Battle Royale multijoueur ou solo", on_steam: true, on_psn: true, on_xboxlive: true)
Game.create!(name: "FIFA 20", description: "Battle Royale multijoueur ou solo", on_steam: true, on_psn: true, on_xboxlive: true)
Game.create!(name: "Dofus", description: "Battle Royale multijoueur ou solo", on_steam: true, on_psn: true, on_xboxlive: true)
Game.create!(name: "League of Legends", description: "Battle Royale multijoueur ou solo", on_steam: true, on_psn: true, on_xboxlive: true)






puts "Good job !"

