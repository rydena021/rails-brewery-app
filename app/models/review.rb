class Review < ApplicationRecord
  validates :rating, :comment, :brewery_id, presence: true
  validates :rating, :inclusion => {:in => (1..5).to_a}

  belongs_to :brewery
end
