class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :school, optional: true
  belongs_to :cart

  def total_price
    school.price * quantity
  end
end
