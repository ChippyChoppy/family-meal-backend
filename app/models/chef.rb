class Chef < ApplicationRecord
    has_many :reservations, dependent: :destroy
    has_many :diners, through: :reservations
    has_many :dishes, dependent: :destroy
end
