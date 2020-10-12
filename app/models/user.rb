class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates_presence_of :email
validates_uniqueness_of :email, case_sensitive: false
validates_format_of :email, with: /@/
end
