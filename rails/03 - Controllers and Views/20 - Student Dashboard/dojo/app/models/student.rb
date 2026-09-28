class Student < ApplicationRecord
  belongs_to :dojo_branch, foreign_key: :dojo_id
end
