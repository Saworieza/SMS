json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :description, :priority
  json.url task_url(task, format: :json)
end
