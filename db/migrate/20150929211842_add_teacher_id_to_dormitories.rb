class AddTeacherIdToDormitories < ActiveRecord::Migration
  def change
    add_column :dormitories, :teacher_id, :integer
  end
end
