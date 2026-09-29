class Alumn < ApplicationRecord
  belongs_to :training

  validates :first_name, :last_name, :job_role, presence: true
end
