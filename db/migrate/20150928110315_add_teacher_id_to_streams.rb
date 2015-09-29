class AddTeacherIdToStreams < ActiveRecord::Migration
  def change
    add_column :streams, :teacher_id, :integer
  end
end
