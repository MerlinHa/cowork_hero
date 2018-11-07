class AddUserToCoworkingSpace < ActiveRecord::Migration[5.2]
  def change
    add_reference :coworking_spaces, :user, foreign_key: true
  end
end
