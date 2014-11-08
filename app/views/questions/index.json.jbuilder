json.array!(@questions) do |question|
  json.extract! question, :id, :title, :description, :is_public
  json.url question_url(question, format: :json)
end
