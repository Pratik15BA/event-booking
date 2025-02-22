json.extract! event, :id, :name, :start_at, :ends_at, :location, :capacity, :created_at, :updated_at
json.url event_url(event, format: :json)
