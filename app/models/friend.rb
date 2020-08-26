class Friend < ApplicationRecord
  belongs_to :user1
  belongs_to :user2

  validates :user1, presence: true
  validates :user2, presence: true
  validates :status, presence: true, inclusion: { in: %w(pending accepted declined)} # est-ce qu'on met en francais ?
end
