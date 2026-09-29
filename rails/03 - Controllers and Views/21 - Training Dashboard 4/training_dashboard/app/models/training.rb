class Training < ApplicationRecord
  has_many :alumns, dependent: :destroy

  validates :training_number, :start_date, :end_date, presence: true
  validates :training_number, numericality: true
end
