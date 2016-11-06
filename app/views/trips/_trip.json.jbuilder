json.extract! trip, :id, :lattitude, :longitude, :name, :address, :title, :created_at, :updated_at
json.url trip_url(trip, format: :json)