class Company < ApplicationRecord
    has_many :affiliations
    has_many :affiliates, through: :affiliations, source: :affiliates
end
