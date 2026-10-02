class Subscriber < ApplicationRecord
  alias_attribute :name, :names

  validates :names, :contact_num, :is_enabled, presence: true
  validates :names, length: { in: 2..45 }
  validates :contact_num, numericality: true, length: { maximum: 12 }
  validates :is_enabled, numericality: { only_integer: true, in: 0..1 }
end
