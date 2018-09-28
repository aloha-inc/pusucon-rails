json.extract! order, :id, :name, :name_kana, :email, :tel, :schedule, :message, :created_at, :updated_at
json.url order_url(order, format: :json)
