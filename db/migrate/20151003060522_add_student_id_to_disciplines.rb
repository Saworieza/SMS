class AddStudentIdToDisciplines < ActiveRecord::Migration
  def change
    add_column :disciplines, :student_id, :integer
  end
end
