class FeedActivity < ApplicationRecord
  belongs_to :content
  belongs_to :receiver # voir avec Cecile
  belongs_to :author

  has_many :contents # faut-il mettre ca ???

  validates :content, presence: true # faut-il mettre ca ?
  validates :receiver, presence: true # receiver ou receiver_id ?
  validates :author, presence: true
end
