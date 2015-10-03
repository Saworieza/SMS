class AddCategoryToDisciplines < ActiveRecord::Migration
  def change
    add_column :disciplines, :category, :string
  end
end
