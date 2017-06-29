class Product < ApplicationRecord
  validates_presence_of :name, :price, :period

  def price_by_amount_discount
    self.price - self.amount_discount
  end

  def price_by_percent_discount
    deducted = self.percent_discount/100 * self.price
    self.price - deducted
  end
end
