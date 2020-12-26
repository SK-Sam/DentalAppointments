class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :insurance_type
      t.integer :sex
      t.boolean :preexisting_conditions

      t.timestamps
    end
  end
end
