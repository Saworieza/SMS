json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :fullname, :employer, :employee_number, :employment_date, :birthdate, :marital_status, :nationality, :home_address, :phone_1, :phone_2, :email, :town, :county, :education, :certifications, :subjects, :image
  json.url teacher_url(teacher, format: :json)
end
