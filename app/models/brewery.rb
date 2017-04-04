class Brewery < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, :address, :description, :image_url, presence: true

  has_many :reviews, dependent: :destroy
end
