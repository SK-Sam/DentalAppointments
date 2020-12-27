class Dentist < Person
  belongs_to :dental_office
  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments
  validates :name, 
            :discipline, 
            :sex, 
            presence: true
end
