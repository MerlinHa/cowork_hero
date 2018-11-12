class AddDetailsToCoworkingSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :coworking_spaces, :latitude, :float
    add_column :coworking_spaces, :longitude, :float
    add_column :coworking_spaces, :short_desc, :string
    add_column :coworking_spaces, :long_desc, :string
    add_column :coworking_spaces, :address, :string
    add_column :coworking_spaces, :zip, :integer
    add_column :coworking_spaces, :city, :string
    add_column :coworking_spaces, :country, :string
  end
end
