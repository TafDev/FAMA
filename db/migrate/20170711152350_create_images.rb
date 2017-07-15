class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :image
      t.string :title
      t.text :description
      t.text :small_print
      t.references :attachable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
