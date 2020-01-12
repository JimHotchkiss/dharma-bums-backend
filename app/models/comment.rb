class Comment < ApplicationRecord
  belongs_to :meditation
  has_many :replies
end
