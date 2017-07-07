class AddPhoneToTransactions < ActiveRecord::Migration[5.0]
  def change
    add_column :transactions, :phone_number, :string
  end
end
