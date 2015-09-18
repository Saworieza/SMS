class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :form
      t.string :stream
      t.string :classteacher

      t.timestamps null: false
    end
  end
end
