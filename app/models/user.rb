class User < ApplicationRecord
    has_secure_password
    has_many :votes, dependent: :destroy
    has_many :follows
end
