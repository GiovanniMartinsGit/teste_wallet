json.extract! user, :id, :name, :saldo, :created_at, :updated_at
json.url user_url(user, format: :json)
