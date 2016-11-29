json.extract! product, :id, :name, :description, :stock_quantity, :price, :image, :created_at, :updated_at, :category_id
json.url product_url(product, format: :json)
