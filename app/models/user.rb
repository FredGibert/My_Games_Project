class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_games
  has_many :games, through: :user_games

  has_many :events
  has_many :participations

  has_many :feed_activities, foreign_key: :receiver_id # voir avec cecile (author vs receiver)

  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true

  def friends
    Friend.where('user1_id = :id OR user2_id = :id', id: id)
  end

  include PgSearch::Model
  pg_search_scope :search,
    against: [ :first_name, :last_name ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
