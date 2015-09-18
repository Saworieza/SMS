class AddYearToClassroom < ActiveRecord::Migration
  def change
    add_column :classrooms, :year, :integer
  end
end
