class ChangeDatefieldForTime < ActiveRecord::Migration[5.0]
  def change
    change_column :transactions, :time, :string
  end
end
