class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :period
      t.boolean :photobooth, default: false
      t.boolean :photobooth_attendant, default: false
      t.boolean :propbox, default: false
      t.boolean :guestbook, default: false
      t.boolean :key_ring, default: false
      t.boolean :usb, default: false
      t.boolean :public_liability_insurance, default: false
      t.boolean :gif, default: false
      t.boolean :interactive_touchscreen, default: false
      t.boolean :red_curtain_background, default: false
      t.boolean :unlimited_visits, default: false
      t.boolean :social_media_uploads, default: false
      t.boolean :personalised_messages, default: false
      t.boolean :green_screen, default: false
      t.boolean :facial_recognition, default: false
      t.boolean :red_carpet, default: false
      t.boolean :free_keyrings, default: false
      t.boolean :free_pic_frames, default: false
      t.boolean :karaoke, default: false
      t.boolean :merryoke, default: false
      t.boolean :video_messages, default: false
      t.boolean :personalised_theme, default: false

      t.timestamps
    end
  end
end
