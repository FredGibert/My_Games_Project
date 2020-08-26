class Event < ApplicationRecord
  belongs_to :game
  belongs_to :user

  has_many :participations

  validates :description, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
end
