class RemoveTeacherFromSubjects < ActiveRecord::Migration
  def change
    remove_column :subjects, :teacher, :string
  end
end
