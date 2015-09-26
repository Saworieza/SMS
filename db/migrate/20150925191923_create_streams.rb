class CreateStreams < ActiveRecord::Migration
  def change
    create_table :streams do |t|
      t.string :name
      t.references :classroom, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
