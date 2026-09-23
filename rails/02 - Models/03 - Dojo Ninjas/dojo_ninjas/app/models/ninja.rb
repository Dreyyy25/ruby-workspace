class Ninja < ApplicationRecord
  belongs_to :dojo

  #Validations
  validates :first_name, :last_name, presence: true
end
