class Event < ApplicationRecord
  belongs_to :game
  belongs_to :user
  belongs_to :content, polymorphic: true

  has_many :participations

  validates :game, presence: true # c'est bon comme ca ?
  validates :user, presence: true

  validates :description, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
end
