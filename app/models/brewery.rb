class Brewery < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, :address, :description, presence: true
  has_many :reviews, dependent: :destroy

  has_attachment :photo
end
