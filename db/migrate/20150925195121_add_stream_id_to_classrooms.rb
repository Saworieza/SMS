class AddStreamIdToClassrooms < ActiveRecord::Migration
  def change
    add_column :classrooms, :stream_id, :integer
  end
end
