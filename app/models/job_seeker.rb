class JobSeeker < ApplicationRecord
  before_save :encrypt_password
  # before_create :generate_token

  def self.authenticate(email, password)
    job_seeker = find_by_j_email(email)
    if job_seeker && job_seeker.password_hash == BCrypt::Engine.hash_secret(password, job_seeker.password_salt)
      job_seeker
    else
      nil
    end
  end

  def encrypt_password
    if j_password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(j_password, password_salt)
    end
  end

  # def generate_token
  #   self.token = loop do
  #     random_token = SecureRandom.hex(4)
  #     break random_token unless self.class.exists?(token: random_token)
  #   end
  # end

end
