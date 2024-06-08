json.extract! profile, :id, :username, :short_description, :about, :connections, :created_at, :updated_at
json.url profile_url(profile, format: :json)
