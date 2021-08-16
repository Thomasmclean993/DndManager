class AddCharactersToPlayers < ActiveRecord::Migration[6.1]
  def change
    add_reference :characters, :player, null: true, foreign_key: true
    add_foreign_key :characters, :players 
  end
end
