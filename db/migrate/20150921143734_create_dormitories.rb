class CreateDormitories < ActiveRecord::Migration
  def change
    create_table :dormitories do |t|
      t.string :name
      t.string :description
      t.string :matron

      t.timestamps null: false
    end
  end
end
