class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :status, presence: true, inclusion: { in: %w(pending accepted declined) }
  validates :user, uniqueness: { scope: :event }
end
