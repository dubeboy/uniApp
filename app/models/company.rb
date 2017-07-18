class Company < ApplicationRecord
  before_save :encrypt_password

  def self.authenticate(email, password)
    company = find_by_c_email(email)
    if company && company.password_hash == BCrypt::Engine.hash_secret(password, company.password_salt)
      company
    else
      nil
    end
  end


  private
  def encrypt_password
    if c_password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(c_password, password_salt)
    end
  end
end
