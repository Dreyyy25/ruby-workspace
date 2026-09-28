class Training < ApplicationRecord
    has_many :alumns
    validates :date_start, :date_end, presence: true
end
