class Review < ApplicationRecord
  belongs_to :brewery
  validates :rating, :comment, :brewery_id, presence: true
  validates :rating, inclusion: { in (1..5).to_a }
end
