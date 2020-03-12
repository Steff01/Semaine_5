class City < ApplicationRecord
    has_many :physicians
    has_many :patients
    has_many :appointments
end
