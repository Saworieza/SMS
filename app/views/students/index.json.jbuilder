json.array!(@students) do |student|
  json.extract! student, :id, :fullname, :birthdate, :gender, :nationality, :form, :stream, :class_teacher, :address, :phone_1, :phone_2, :email, :town, :county, :image, :adm_no, :adm_date
  json.url student_url(student, format: :json)
end
