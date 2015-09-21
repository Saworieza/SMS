json.array!(@subjects) do |subject|
  json.extract! subject, :id, :name, :class, :teacher
  json.url subject_url(subject, format: :json)
end
