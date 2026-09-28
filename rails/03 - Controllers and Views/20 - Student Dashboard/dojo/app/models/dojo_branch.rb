class DojoBranch < ApplicationRecord
    has_many :students, foreign_key: :dojo_id
    validates :branch, :state, :city, :street, presence: true
end
