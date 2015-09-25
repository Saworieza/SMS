class ChangeClassroomIdFromStudent < ActiveRecord::Migration
  def change
    rename_column :students, :Classroom_Id, :classroom_id
  end
end
