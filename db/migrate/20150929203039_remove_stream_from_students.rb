class RemoveStreamFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :stream, :string
  end
end
