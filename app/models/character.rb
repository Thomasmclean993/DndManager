class Character < ApplicationRecord
    validates :name, presence: true
    validates :owner, presence: true

    # belongs_to :player
end
