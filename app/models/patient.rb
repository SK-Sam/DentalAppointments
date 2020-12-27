class Patient < Person
  has_many :appointments, dependent: :destroy
  has_many :dentists, through: :appointments
  validates :name, 
            :insurance_type, 
            :sex, 
            :preexisting_conditions, 
            presence: true
end
