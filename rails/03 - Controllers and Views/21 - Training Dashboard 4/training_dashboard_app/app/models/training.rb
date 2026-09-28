class Training < ApplicationRecord
    has_many :alumni, class_name: "Alumn", dependent: :destroy

    validates :training_number, :date_started, :date_ended, presence: true
end
