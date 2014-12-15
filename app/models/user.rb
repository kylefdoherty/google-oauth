class User < ActiveRecord::Base
  has_many :posts
  has_secure_password


  def self.create_from_omniauth(auth_hash)

  end
end
