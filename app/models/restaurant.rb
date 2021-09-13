class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :tried, inclusion: [true, false] 
  validates :latitude, numericality: { greater_than_or_equal_to: -90.00000, less_than_or_equal_to: 90.00000 }
  validates :longitude, numericality: { greater_than_or_equal_to: -180.00000, less_than_or_equal_to: 180.00000 }

  belongs_to :regions
end
