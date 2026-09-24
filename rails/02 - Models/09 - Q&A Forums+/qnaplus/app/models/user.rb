class User < ApplicationRecord
    has_many :creators
    has_many :forums, through: :creators
    has_many :questions
    has_many :answers
end
