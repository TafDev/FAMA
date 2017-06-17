class AddAttributesToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :title, :string
    add_column :reviews, :body, :text
    add_column :reviews, :name, :string
    add_column :reviews, :email, :string
  end
end
