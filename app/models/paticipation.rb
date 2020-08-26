class Paticipation < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :user, presence: true
  validates :event, presence: true
  validates :status, presence: true, inclusion: { in: %w(pending accepted declined) }
end
