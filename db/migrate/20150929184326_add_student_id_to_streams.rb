class AddStudentIdToStreams < ActiveRecord::Migration
  def change
    add_column :streams, :student_id, :integer
  end
end
