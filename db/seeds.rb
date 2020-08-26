# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'


6.times do
  # game_image = File.open(Rails.root.join("db/fixtures/castles/castle#{index + 1}.jpg"))
  game = Game.new(
    name:  Faker::Game.title,
    description: Faker::Game.genre,
  )
  # castle.photo.attach(io: castle_image, filename: "castle#{index + 1}.jpg")
  # random_user = User.order(Arel.sql('RANDOM()')).first
  # castle.user = random_user
  game.save!

  p game
end



# create user
julien = User.new(first_name: 'julien', last_name: 'victor', email: 'jvictor@exemple.com', password: 'secret')
edouard = User.new(first_name: 'edouard', last_name: 'goisbault', email: 'edouard@exemple.com', password: 'secret')
fred = User.new(first_name: 'fred', last_name: 'gibert', email: 'fred@exemple.com', password: 'secret')
evano = User.new(first_name: 'julien', last_name: 'evano', email: 'jevano@exemple.com', password: 'secret')

julien.save!
edouard.save!
fred.save!
evano.save!

p julien
p edouard
p fred
p evano
