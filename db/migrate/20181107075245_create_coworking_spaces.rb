class CreateCoworkingSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :coworking_spaces do |t|
      t.string :location
      t.integer :capacity
      t.string :services
      t.integer :price
      t.string :name

      t.timestamps
    end
  end
end
