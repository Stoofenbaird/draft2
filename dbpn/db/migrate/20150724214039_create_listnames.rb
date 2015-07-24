class CreateListnames < ActiveRecord::Migration
  def change
    create_table :listnames do |t|
      t.string :lname
      t.timestamps null: false
    end
  end
end
