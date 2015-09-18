class CreatePayOthers < ActiveRecord::Migration
  def change
    create_table :pay_others do |t|
      t.string :student_name
      t.integer :adm_no
      t.integer :form
      t.string :stream
      t.integer :amount
      t.string :payment_for
      t.string :paid_by
      t.string :pay_method

      t.timestamps null: false
    end
  end
end
