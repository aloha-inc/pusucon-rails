json.extract! school, :id, :name, :description, :image_url, :price, :created_at, :updated_at
json.url school_url(school, format: :json)
