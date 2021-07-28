class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  
  
  validates :discription, presence: true
end
