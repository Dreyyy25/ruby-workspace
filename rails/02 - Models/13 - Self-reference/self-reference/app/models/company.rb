class Company < ApplicationRecord
    has_many :affiliations
    has_many :partners, through: :affiliations
end
