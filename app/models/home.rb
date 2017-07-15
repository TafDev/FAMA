class Home < ApplicationRecord
  has_many :images, as: :attachable
  accepts_nested_attributes_for :images, allow_destroy: true

end