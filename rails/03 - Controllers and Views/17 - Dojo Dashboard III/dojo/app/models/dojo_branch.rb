class DojoBranch < ApplicationRecord
    validates :branch, :state, :city, :street, presence: true
end
