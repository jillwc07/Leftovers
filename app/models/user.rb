class User < ActiveRecord::Base
 has_secure_password

  validates :username, presence: true
  validates :email, uniqueness: true, presence: true,
  format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/,
    message: "must be a email format, eg abc@xyz.com"}
  validates :password, length: {minimum: 8}

end
