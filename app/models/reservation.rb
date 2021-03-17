class Reservation < ApplicationRecord
  belongs_to :chef
  belongs_to :diner
end
