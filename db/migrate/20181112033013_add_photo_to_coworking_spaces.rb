class AddPhotoToCoworkingSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :coworking_spaces, :photo, :string
  end
end
