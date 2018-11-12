class AddStarToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :star, :integer, default: 0, null: false
  end
end
