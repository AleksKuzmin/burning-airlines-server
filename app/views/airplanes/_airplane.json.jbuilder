json.extract! airplane, :id, :name, :rows, :columns, :created_at, :updated_at, :seats
json.url airplane_url(airplane, format: :json)
