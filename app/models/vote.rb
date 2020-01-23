class Vote < ApplicationRecord
    belongs_to :user

    def self.search_votes(artist_id, album_name)
        votes_by_artist_search = Vote.all.select { |vote| (vote.api_artist_id == artist_id) && (vote.album_name == album_name) }
    end

    def self.sort_vote_count_by_song_id
        vote_count_by_song = Hash.new(0)
        song_arr = Vote.all.pluck(:artist_name, :song_name)
        song_arr.each { |obj| vote_count_by_song[obj] ? vote_count_by_song[obj] += 1 : vote_count_by_song[obj] = 1 }
        new_hash = vote_count_by_song.select { |k, val| val > 1 }
        new_hash
    end
    
end
