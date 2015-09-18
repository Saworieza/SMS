json.array!(@classrooms) do |classroom|
  json.extract! classroom, :id, :form, :stream, :classteacher, :references
  json.url classroom_url(classroom, format: :json)
end
