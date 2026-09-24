class Forum < ApplicationRecord
    has_many :creators
    has_many :users, through: :creators
    has_many :questions
end
