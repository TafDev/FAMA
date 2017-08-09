class CreateGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :galleries do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.string :cover_photo

      t.timestamps
    end
  end
end
