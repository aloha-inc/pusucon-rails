class LineItem < ApplicationRecord
  belongs_to :school
  belongs_to :cart
end
