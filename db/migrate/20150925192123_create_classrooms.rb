class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :teacher
      t.date :year

      t.timestamps null: false
    end
  end
end
