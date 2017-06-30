class Transaction < ApplicationRecord
  belongs_to :product

  validates_presence_of :amount, :first_name, :last_name, :date, :time, :postcode, :address

  geocoded_by :postcode
  after_validation :geocode, if: :postcode_changed?

end
