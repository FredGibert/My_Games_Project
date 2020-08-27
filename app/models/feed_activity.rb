class FeedActivity < ApplicationRecord
  belongs_to :content, polymorphic: true
  belongs_to :receiver, class_name: 'User'
  belongs_to :author, class_name: 'User'
end
