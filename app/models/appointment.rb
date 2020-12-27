class Appointment < ApplicationRecord
  belongs_to :dentist
  belongs_to :patient
  validates :date,
            :service,
            :appt_length,
            presence: true
end
