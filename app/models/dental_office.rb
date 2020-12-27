class DentalOffice < ApplicationRecord
  has_many :dentists, dependent: :destroy
  validates :name, 
            :street_address, 
            :city, 
            :state, 
            :zip_code, 
            :insurance_type, 
            presence: true
end
