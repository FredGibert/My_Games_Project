module FriendsHelper
  def current_user_friend(friendship, current_user)
    current_user.id == friendship.user1_id ? friendship.user2 : friendship.user1
  end
end
