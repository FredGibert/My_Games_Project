Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

# Fill the activity feed

user_game = UserGame.new(xxx)

if user_game.save
  current_user.friends.each do |friend|
    FeedActivity.create(content: user_game, receiver: friend, author: current_user)
  end
end

# custom reference

t.references :user1, foreign_key: { to_table: :users }

+ appeler Cecile pour le has_many friends ET feed_activities

+ editer le model

belongs_to :user1, class_name: 'User'

# polymorphism

t.references :content, polymorphic: true

+ editer le model

belongs_to :content, polymorphic: true
