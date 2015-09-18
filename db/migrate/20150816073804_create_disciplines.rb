class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :incident
      t.date :incident_date
      t.string :student
      t.integer :adm_no
      t.string :form
      t.text :details
      t.text :action_taken
      t.string :email_subject
      t.text :email_message
      t.string :email_address

      t.timestamps null: false
    end
  end
end
