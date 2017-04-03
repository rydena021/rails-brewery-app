class Brewery < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, :adress, :description, :image_url, presence: true

  has_many :reviews, dependent: :destroy
end
