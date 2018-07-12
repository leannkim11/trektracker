class Destination < ApplicationRecord
  has_many :trips
  validates_uniqueness_of :city
end
