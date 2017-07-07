class AddCompletedToTransactions < ActiveRecord::Migration[5.0]
  def change
    add_column :transactions, :tx_status, :string
  end
end
