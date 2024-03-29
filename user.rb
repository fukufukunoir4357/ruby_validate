class User < ApplicationRecord
    validates :name, presence: true,length: {maximum: 15}
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
    
    has_secure_password
      VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8..32}+\z/i
      validates :password, format: { with: VALID_PASSWORD_REGEX }
      validates :password,presence: ture
end
