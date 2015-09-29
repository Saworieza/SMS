class ChangeNumberFormatInMyTable < ActiveRecord::Migration
  def change
    change_column :classrooms, :number, :integer
  end
end
