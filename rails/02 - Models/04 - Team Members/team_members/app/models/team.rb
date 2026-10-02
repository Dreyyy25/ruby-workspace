class Team < ApplicationRecord
  has_many :members, dependent: :destroy
  alias_attribute :project, :name
  alias_attribute :responsibilities, :responsibility

  validates :name, :responsibility, presence: true
  validates :name, length: { in: 3..45 }
  validates :responsibility, length: { maximum: 255 }
end
