class RemoveMatronFromDormitories < ActiveRecord::Migration
  def change
    remove_column :dormitories, :matron, :string
  end
end
