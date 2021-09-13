class Region < ApplicationRecord
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :city, presence: true
  
  has_many :restaurants
end
