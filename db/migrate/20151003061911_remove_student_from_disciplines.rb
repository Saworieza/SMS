class RemoveStudentFromDisciplines < ActiveRecord::Migration
  def change
    remove_column :disciplines, :student, :string
  end
end
