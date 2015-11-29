json.array!(@devils) do |devil|
  json.extract! devil, :id, :name, :LC, :LD, :PV, :OP, :note
  json.url devil_url(devil, format: :json)
end
