class Paticipation < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :status, presence: true, inclusion: { in: %w(pending accepted declined) }
end
