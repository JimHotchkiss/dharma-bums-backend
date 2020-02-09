class Comment < ApplicationRecord
  belongs_to :meditation
  has_many :replies
  accepts_nested_attributes_for :replies
end
