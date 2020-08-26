class UserGame < ApplicationRecord
  belongs_to :game
  belongs_to :user
  belongs_to :content, polymorphic: true

  validates :game, presence: true
  validates :user, presence: true
end
