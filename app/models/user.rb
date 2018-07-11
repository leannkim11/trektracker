class User < ApplicationRecord
  has_secure_password

  validates_uniqueness_of :username

  has_many :trips


# def password=(plaintext_password)
#  self.password_digest = BCrypt::Password.create(plaintext_password)
# end
#
#  def authenticate(plaintext_password)
#    BCrypt::Password.new(self.password_digest) == plaintext_password
#  end

end
