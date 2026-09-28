class Affiliation < ApplicationRecord
  belongs_to :company
  # the partner is also a Company, so tell Rails which class to use
  belongs_to :partner, class_name: "Company"

  validates :partner_id, uniqueness: { scope: :company_id, message: "is already a partner" }
  validate :not_partner_with_self

  private
    def not_partner_with_self
      errors.add(:partner, "can't be the same company") if company == partner
    end
end
