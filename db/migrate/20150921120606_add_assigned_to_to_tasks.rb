class AddAssignedToToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :assignedTo, :string
  end
end
