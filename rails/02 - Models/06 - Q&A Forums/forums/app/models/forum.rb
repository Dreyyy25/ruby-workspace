class Forum < ApplicationRecord
    has_many :questions, dependent: :destroy

    validates :title, :description, presence: true 

end
