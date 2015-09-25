class AddClassroomIdToStudent < ActiveRecord::Migration
  def change
    add_column :students, :Classroom_Id, :integer
  end
end
