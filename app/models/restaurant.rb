class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :latitude, numericality: {greater_than_or_equal_to: -90.00000, less_than_or_equal_to: 90.00000}, allow_nil: true
  validates :longitude, numericality: {greater_than_or_equal_to: -180.00000, less_than_or_equal_to: 180.00000}, allow_nil: true
  validates :rating, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5}, allow_nil: true

  belongs_to :region
end
