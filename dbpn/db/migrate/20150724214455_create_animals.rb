class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :aname
      t.string :breed
      t.string :dates
      t.string :notes
      t.belongs_to :breed
      t.belongs_to :lname
      t.timestamps null: false
    end
  end
end
