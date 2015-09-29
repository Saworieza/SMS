class AddStreamIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :stream_id, :integer
  end
end
