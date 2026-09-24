class Company < ApplicationRecord
  has_many :affiliations, dependent: :destroy
  has_many :partners, through: :affiliations, source: :partner
end