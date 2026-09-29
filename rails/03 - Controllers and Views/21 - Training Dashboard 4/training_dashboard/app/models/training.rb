class Training < ApplicationRecord
  has_many :alumns

  validates :training_number,
            presence: true,
            numericality: { 
                only_integer: true,
                greather_than: 0
            }

  validates :date_started, presence: true
  validates :date_ended, presence: true
end