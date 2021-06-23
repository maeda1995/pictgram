class User < ApplicationRecord
  validates :name, presence: true, length: { in: 1..15 }
  PW_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}\z/i
  validates :password, presence: true, format: { with: PW_REGEX }
  EM_REGEX = /[a-zA-Z0-9._+]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*/
  validates :email, presence: true, format: { with: EM_REGEX }
  has_secure_password
end
