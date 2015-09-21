json.array!(@pay_others) do |pay_other|
  json.extract! pay_other, :id, :student_name, :adm_no, :form, :stream, :amount, :payment_for, :paid_by, :pay_method
  json.url pay_other_url(pay_other, format: :json)
end
