json.array!(@users) do |user|
  json.extract! user, :id, :name, :A, :B, :C, :D
  json.url user_url(user, format: :json)
end
