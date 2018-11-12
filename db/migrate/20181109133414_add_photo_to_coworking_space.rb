class AddPhotoToCoworkingSpace < ActiveRecord::Migration[5.2]
  def change
    add_column :coworking_spaces, :photo_id, :string
  end
end
