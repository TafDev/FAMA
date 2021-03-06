class Gallery < ApplicationRecord

  has_many :gallery_images, dependent: :destroy
  accepts_nested_attributes_for :gallery_images, :allow_destroy => true

  mount_uploader :cover_photo, ImageUploader

end
