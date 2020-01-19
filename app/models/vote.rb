class Vote < ApplicationRecord
    belongs_to :user

    def self.search_votes(artist_id, album_name)
        votes_by_artist_search = Vote.all.select { |vote| vote.api_artist_id == artist_id && vote.album_name == album_name }
    end
end
