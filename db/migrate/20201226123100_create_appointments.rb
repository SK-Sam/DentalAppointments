class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.string :service
      t.integer :appt_length

      t.timestamps
    end
  end
end
