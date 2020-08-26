class FeedActivity < ApplicationRecord
  belongs_to :content
  belongs_to :receiver
  belongs_to :author
end
