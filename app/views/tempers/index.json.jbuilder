json.array!(@tempers) do |temper|
  json.extract! temper, :id, :name, :PV, :PO, :note
  json.url temper_url(temper, format: :json)
end
