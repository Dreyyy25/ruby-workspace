class Company < ApplicationRecord
  has_many :affiliations, dependent: :destroy
  has_many :partners, through: :affiliations

  has_many :inverse_affiliations, class_name: "Affiliation", foreign_key: "partner_id", dependent: :destroy
  has_many :inverse_partners, through: :inverse_affiliations, source: :company

  validates :name, presence: true, length: { maximum: 45 }
end
