class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :user1, class_name: 'User'
  belongs_to :user2, class_name: 'User'
  has_many :friends # Voir avec Cecile

  has_many :participations
  has_many :events
  has_many :feed_activities # voir avec cecile (author vs receiver)
  has_many :user_games

  validates :first_name, presence: true
  validates :last_name, presence: true
end
