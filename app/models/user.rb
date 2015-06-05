class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :key, presence: true, uniqueness: true

  before_create :generate_api_key

  private

  def generate_api_key
    self.key = SecureRandom.hex
  end
end
