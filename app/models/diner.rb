class Diner < ApplicationRecord
    has_many :reservations, dependent: :destroy
    has_many :chefs, through :reservations
end
