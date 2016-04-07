class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :color
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
