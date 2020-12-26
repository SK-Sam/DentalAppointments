class AddDentalOfficeToDentists < ActiveRecord::Migration[5.2]
  def change
    add_reference :dentists, :dental_office, foreign_key: true
  end
end
