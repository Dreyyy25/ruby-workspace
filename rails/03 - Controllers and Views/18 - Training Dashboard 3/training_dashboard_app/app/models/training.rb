class Training < ApplicationRecord
    validates :training_number, :date_started, :date_ended, presence: true
end
