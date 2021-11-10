json.extract! flight, :id, :origin, :destination, :date, :airplane_id, :created_at, :updated_at, :seats, :reserved_seats
json.url flight_url(flight, format: :json)
