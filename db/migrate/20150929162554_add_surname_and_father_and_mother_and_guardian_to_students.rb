class AddSurnameAndFatherAndMotherAndGuardianToStudents < ActiveRecord::Migration
  def change
    add_column :students, :surname, :string
    add_column :students, :father, :string
    add_column :students, :mother, :string
    add_column :students, :guardian, :string
  end
end
