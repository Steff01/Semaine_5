class Dogsitter < ApplicationRecord
    has_many :stroll
    has_many :dogs, through: :stroll
    belongs_to :city
end
