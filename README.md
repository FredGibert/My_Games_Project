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

# feed activities
on ne stocke pas le type d'action effectuée, juste le type de contenu.

si on veut afficher :
1. untel t'invite à un event (sur le participation create)
-> if activity.content_type == 'Participation' && activity.receiver == activity.content.user

2. untel a accepté ton invitation (sur le participation accept)
-> if activity.content_type == 'Participation' && activity.receiver != activity.content.user
OU
-> if activity.content_type == 'Participation' && activity.receiver == activity.content.event.user

# feed page (/ as signed in)

@feed = current_user.feed_activities

@feed.each do |activity|
  # better; use partial files!
  if activity.content_type == 'Event'
    puts "#{activity.author.first_name} a créé un event : #{activity.content.description}"
  elsif ...
    ....
  end
end

