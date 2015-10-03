class AddGenderToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :gender, :string
  end
end
