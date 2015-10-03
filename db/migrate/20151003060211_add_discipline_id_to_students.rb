class AddDisciplineIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :discipline_id, :integer
  end
end
