json.array!(@streams) do |stream|
  json.extract! stream, :id, :name, :classroom_id
  json.url stream_url(stream, format: :json)
end
