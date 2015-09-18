json.array!(@pay_fees) do |pay_fee|
  json.extract! pay_fee, :id, :student_name, :adm_no, :form, :stream, :amount, :paid_by, :pay_method, :references
  json.url pay_fee_url(pay_fee, format: :json)
end
