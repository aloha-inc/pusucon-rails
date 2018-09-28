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
  validates :schedule, inclusion: schedule.keys
end
