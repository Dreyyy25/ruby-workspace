class User < ApplicationRecord
    has_many: creators, dependent: :destroy
    has_many: forums, through: :creators

    has_many :questions, dependent: :destroy
    has_many :answers, dependent: :destroy

    validates :username, presence: true, uniqueness: true
    validates :email_address, presence: true, uniqueness: true
    validates :password, presence: true
end
