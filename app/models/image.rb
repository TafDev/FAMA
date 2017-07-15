class Image < ApplicationRecord
  belongs_to :attachable, polymorphic: true
  mount_uploader :image, ImageUploader
end
