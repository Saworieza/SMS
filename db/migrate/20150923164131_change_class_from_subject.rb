class ChangeClassFromSubject < ActiveRecord::Migration
  def change
    remove_column :subjects, :class
    add_column :subjects, :classroom, :string
  end
end
