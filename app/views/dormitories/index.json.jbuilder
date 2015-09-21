json.array!(@dormitories) do |dormitory|
  json.extract! dormitory, :id, :name, :description, :matron
  json.url dormitory_url(dormitory, format: :json)
end
