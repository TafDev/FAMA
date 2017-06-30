class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.references :product, foreign_key: true
      t.float :amount
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.datetime :date
      t.datetime :time
      t.string :postcode
      t.text :address
      t.text :notes

      t.timestamps
    end
  end
end
