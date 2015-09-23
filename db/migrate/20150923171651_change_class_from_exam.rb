class ChangeClassFromExam < ActiveRecord::Migration
  def change
    remove_column :exams, :class
    add_column :exams, :classroom, :string
  end
end
