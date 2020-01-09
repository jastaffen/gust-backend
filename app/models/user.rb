class User < ApplicationRecord
    has_many :votes
    has_many :songs, through: :votes
    has_many :follows
    has_many :artists, through: :follows
end
