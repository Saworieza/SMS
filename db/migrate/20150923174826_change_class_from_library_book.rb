class ChangeClassFromLibraryBook < ActiveRecord::Migration
  def change
    remove_column :library_books, :class
    add_column :library_books, :classroom, :string
  end
end
