class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :coworking_space, foreign_key: true
      t.string :start_datetime
      t.string :end_datetime
      t.integer :total_price
      t.string :status

      t.timestamps
    end
  end
end
