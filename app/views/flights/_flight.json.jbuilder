json.extract! flight, :id, :flight_number, :origin, :destination, :date, :plane_id, :created_at, :updated_at
<<<<<<< HEAD

json.plane do
  json.extract! flight.plane, :id, :name, :column, :row
=======
json.plane do
    json.extract! flight.plane, :id, :name, :column, :row
>>>>>>> 11aed82f642e7d3ab3e3eef6dd77c2472f5670f5
end
json.url flight_url(flight, format: :json)
