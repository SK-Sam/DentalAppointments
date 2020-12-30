class DentalOffice < ApplicationRecord
  has_many :dentists, dependent: :destroy
  validates :name, 
            format: { without: /[0-9]/, message: " cannot have numbers" },
            presence: true,
            uniqueness: { message: " already exists in the database" }
  validates :street_address, 
            :city, 
            :state, 
            :zip_code, 
            :insurance_type, 
            presence: true
end
