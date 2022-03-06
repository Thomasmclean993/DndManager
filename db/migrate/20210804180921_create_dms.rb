class CreateDms < ActiveRecord::Migration[6.1]
  def change
    create_table :dms do |t|
      t.string :name
      
      t.timestamps
    end
  end
end
