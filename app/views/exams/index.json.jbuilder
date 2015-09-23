json.array!(@exams) do |exam|
  json.extract! exam, :id, :name, :start_date, :end_date, :note, :class, :term, :passmark
  json.url exam_url(exam, format: :json)
end
