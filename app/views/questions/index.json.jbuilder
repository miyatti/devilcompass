json.array!(@questions) do |question|
  json.extract! question, :id, :type, :aspect
  json.url question_url(question, format: :json)
end
