class Song < ApplicationRecord
    has_many :follows
    has_many :users, through: :follows
    
    has_many :votes
    has_many :users, through: :votes
    belongs_to :artist

end
