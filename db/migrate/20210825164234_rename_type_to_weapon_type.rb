class RenameTypeToWeaponType < ActiveRecord::Migration[6.1]
  def change
    
    rename_column :weapons, :type, :weapon_types
  end
end
