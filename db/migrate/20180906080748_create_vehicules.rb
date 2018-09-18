class CreateVehicules < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicules do |t|
      t.datetime :date
      t.string :owner_name
      t.integer :N°cin
      t.string :vehicules_type
      t.string :mark
      t.string :color
      t.string :N°engine

      t.timestamps
    end
  end
end
