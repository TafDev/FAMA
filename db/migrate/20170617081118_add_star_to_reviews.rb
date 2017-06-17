class AddStarToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :star, :integer, default: 1
  end
end
