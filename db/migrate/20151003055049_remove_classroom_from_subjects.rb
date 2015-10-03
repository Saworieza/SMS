class RemoveClassroomFromSubjects < ActiveRecord::Migration
  def change
    remove_column :subjects, :classroom, :string
  end
end
