class Company < ApplicationRecord
  has_many :affiliations, dependent: :destroy
  # partners goes through affiliations to each row's partner, which is also a Company
  has_many :partners, through: :affiliations

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 45 }
end
