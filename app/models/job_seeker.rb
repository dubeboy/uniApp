class JobSeeker < ApplicationRecord
  before_save :encrypt_password
  before_create :generate_token

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def generate_token
    self.token = loop do
      random_token = SecureRandom.hex(4)
      break random_token unless self.class.exists?(token: random_token)
    end
  end

end
