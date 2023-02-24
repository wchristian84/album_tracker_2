class User < ApplicationRecord
    validates :username, :password_digest, presence: true
    has_secure_password
    has_many :albums
end
