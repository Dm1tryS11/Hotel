json.extract! admin, :id, :name, :password_digest, :key, :created_at, :updated_at
json.url admin_url(admin, format: :json)
