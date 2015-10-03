class RemoveAdmNoFromDisciplines < ActiveRecord::Migration
  def change
    remove_column :disciplines, :adm_no, :integer
  end
end
