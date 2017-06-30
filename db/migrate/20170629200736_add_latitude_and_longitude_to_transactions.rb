class AddLatitudeAndLongitudeToTransactions < ActiveRecord::Migration[5.0]
  def change
    add_column :transactions, :latitude, :float
    add_column :transactions, :longitude, :float
  end
end
