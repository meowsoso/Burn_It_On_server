json.extract! flight, :id, :flight_number, :origin, :destination, :date, :plane_id, :created_at, :updated_at

json.extract! flight.plane, :id, :name, :column, :row
json.url flight_url(flight, format: :json)
