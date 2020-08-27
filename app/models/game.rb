class Game < ApplicationRecord
  has_many :events
  has_many :user_games
  has_many :users, through: :user_games
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
end
