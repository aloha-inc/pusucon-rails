class Order < ApplicationRecord
	enum schedule: {
		"すぐにでも"         => 0,
		"来月予定"           => 1,
		"3ヶ月後から半年以内" => 2,
		"半年後以降"         => 3,
		"相談して決めたい"    => 4
	}
	has_many :line_items, dependent: :destroy
  # ...
  validates :name, :name_kana, :email, :tel, presence: true
  validates :schedule, inclusion: schedules.keys
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end
