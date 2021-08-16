class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :owner
      t.string :race
      t.text :class 
      t.integer :level
      
      t.timestamps
    end
  end
end
