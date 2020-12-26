class CreateDentists < ActiveRecord::Migration[5.2]
  def change
    create_table :dentists do |t|
      t.string :name
      t.string :discipline
      t.integer :sex

      t.timestamps
    end
  end
end
