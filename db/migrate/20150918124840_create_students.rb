class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :fullname
      t.date :birthdate
      t.string :gender
      t.string :nationality
      t.string :form
      t.string :stream
      t.string :class_teacher
      t.string :address
      t.integer :phone_1
      t.integer :phone_2
      t.string :email
      t.string :town
      t.string :county
      t.string :image
      t.string :adm_no
      t.string :adm_date

      t.timestamps null: false
    end
  end
end
