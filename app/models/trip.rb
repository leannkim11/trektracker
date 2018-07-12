class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :destination

  # def self.num_of_cities_visited
  #   Trip.all
  # end
end
