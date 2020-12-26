class CreateDentalOffices < ActiveRecord::Migration[5.2]
  def change
    create_table :dental_offices do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :insurance_type

      t.timestamps
    end
  end
end
