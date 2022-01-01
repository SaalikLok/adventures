class Region < ApplicationRecord
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true

  has_many :restaurants
end
