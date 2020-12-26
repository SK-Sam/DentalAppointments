class Patient < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :dentists, through: :appointments
end
