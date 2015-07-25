class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.references :listname, index: true, foreign_key: true
      t.references :breed, index: true, foreign_key: true
      t.string :aname
      t.string :breed
      t.string :dates
      t.string :notes

      t.timestamps null: false
    end
  end
end
