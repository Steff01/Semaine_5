class Appointment < ApplicationRecord
    belongs_to :physician
    belongs_to :patient
    belongs_to :city
end
