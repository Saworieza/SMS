class CreateLibraryBooks < ActiveRecord::Migration
  def change
    create_table :library_books do |t|
      t.string :name
      t.string :author
      t.text :description
      t.string :publisher
      t.string :isbn
      t.string :class
      t.string :status

      t.timestamps null: false
    end
  end
end
