class CreateWeapons < ActiveRecord::Migration[6.1]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :type
      t.string :range
      t.string :hit_dc
      t.string :damage
      t.text :notes
      t.string :weight
      t.string :cost
      t.text :special

      t.timestamps
    end
  end
end
