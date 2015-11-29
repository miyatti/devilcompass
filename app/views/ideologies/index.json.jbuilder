json.array!(@ideologies) do |ideology|
  json.extract! ideology, :id, :name, :A, :B, :C, :D
  json.url ideology_url(ideology, format: :json)
end
