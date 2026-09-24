class Forum < ApplicationRecord
    has_many :creators, dependent: :destroy
    has_many :creators, through :creators_records, source: :user
    
    has_many :questions, dependent: :destroy

    validates :title, :description, presence: true
end
