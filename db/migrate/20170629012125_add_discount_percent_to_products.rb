class AddDiscountPercentToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :percent_discount, :float
    add_column :products, :amount_discount, :float
  end
end
