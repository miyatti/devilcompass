json.array!(@attributes) do |attribute|
  json.extract! attribute, :id, :LC, :LD, :note
  json.url attribute_url(attribute, format: :json)
end
