class AddSubjectIdToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :subject_id, :integer
  end
end
