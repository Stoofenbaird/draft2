class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :aname
      t.string :abreed
      t.string :dates
      t.string :notes
      t.belongs_to :listname
      t.belongs_to :breed
      t.timestamps null: false
    end
  end
end
