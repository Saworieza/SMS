class AddAbbreviationToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :abbreviation, :string
  end
end
