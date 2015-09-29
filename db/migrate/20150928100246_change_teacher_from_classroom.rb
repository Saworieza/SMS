class ChangeTeacherFromClassroom < ActiveRecord::Migration
  def change
     rename_column :classrooms, :teacher, :number
  end
end
