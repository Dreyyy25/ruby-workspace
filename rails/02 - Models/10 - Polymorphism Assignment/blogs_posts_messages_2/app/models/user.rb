class User < ApplicationRecord
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  # owner_records are the rows in the owners table; blogs goes through them
  has_many :owner_records, class_name: "Owner", dependent: :destroy
  has_many :blogs, through: :owner_records
  has_many :posts, dependent: :destroy
  has_many :messages, dependent: :destroy
  # comments this user wrote
  has_many :comments, dependent: :destroy
  # comments other users left on this user (the name "comments" is already taken above)
  has_many :received_comments, as: :commentable, class_name: "Comment", dependent: :destroy

  validates :first_name, :last_name, presence: true, length: { minimum: 2 }
  validates :email_address, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end
