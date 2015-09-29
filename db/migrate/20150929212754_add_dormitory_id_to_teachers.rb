class AddDormitoryIdToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :dormitory_id, :integer
  end
end
