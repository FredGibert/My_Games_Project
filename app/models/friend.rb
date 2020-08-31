class Friend < ApplicationRecord
  belongs_to :user1, class_name: 'User'
  belongs_to :user2, class_name: 'User'

  validates :status, presence: true, inclusion: { in: %w(pending accepted declined)} # est-ce qu'on met en francais ?

  def friend_of(user)
    user1.id == user.id ? user2 : user1
  end
end
