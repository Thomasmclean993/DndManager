class Weapon < ApplicationRecord
    validates :name, presence: true
    validates :weapon_types, presence: true
    validates :range, presence: true
    validates :damage, presence: true
   

end
