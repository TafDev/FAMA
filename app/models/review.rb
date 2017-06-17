class Review < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :body
  validates_presence_of :name
  validates_presence_of :star
  validates_presence_of :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

  def average_rating
    self.count == 0 ? 0 : self.average(:star).round(2)
  end

end
