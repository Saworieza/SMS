json.array!(@disciplines) do |discipline|
  json.extract! discipline, :id, :incident, :incident_date, :student, :adm_no, :form, :details, :action_taken, :email_subject, :email_message, :email_address, :references
  json.url discipline_url(discipline, format: :json)
end
