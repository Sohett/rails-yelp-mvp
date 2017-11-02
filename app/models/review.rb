class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true, uniqueness: true
  validates :rating, inclusion: { in: [0,1,2,3,4,5], allow_nil: false, message: "Rating between 0 and 5!"  }, numericality: { only_integer: true}
end
