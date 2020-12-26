class DentalOffice < ApplicationRecord
  has_many :dentists, dependent: :destroy
end
