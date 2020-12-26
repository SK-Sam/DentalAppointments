class AddReferencesToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_reference :appointments, :dentist, foreign_key: true
    add_reference :appointments, :patient, foreign_key: true
  end
end
