class LineItem < ApplicationRecord
  belongs_to :school
  belongs_to :cart

  def total_price
    school.price * quantity
  end
end
