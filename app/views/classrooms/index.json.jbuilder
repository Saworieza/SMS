json.array!(@classrooms) do |classroom|
  json.extract! classroom, :id, :teacher, :year
  json.url classroom_url(classroom, format: :json)
end
