class AddDueDateToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :dueDate, :date
  end
end
