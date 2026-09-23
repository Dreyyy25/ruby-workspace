class Team < ApplicationRecord
    has_many :members, dependent: :destroy

    validates :name, :responsibility, presence: true

    validates :name, length: { minimum: 3 }

end
