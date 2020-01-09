class Artist < ApplicationRecord
    has_many :songs
    has_many :follows
    has_many :users, through: :follows
end
