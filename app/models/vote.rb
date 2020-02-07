class Vote < ApplicationRecord
    belongs_to :user

    def self.search_votes(artist_id, album_name)
        votes_by_artist_search = Vote.all.select { |vote| (vote.api_artist_id == artist_id) && (vote.album_name == album_name) }
    end

    def self.sort_vote_count_by_song_id
        vote_count_by_song = Hash.new(0)
        song_arr = Vote.all.pluck(:artist_name, :song_name)
        song_arr.each { |obj| vote_count_by_song[obj] ? vote_count_by_song[obj] += 1 : vote_count_by_song[obj] = 1 }
        new_hash = vote_count_by_song.max_by(15) { |v| v[1] }        
        new_hash
    end

    def self.votes_by_location(song_name, artist_name)
        votes_hash = Hash.new(0)
        all_song_votes = Vote.all.select { |vote| vote.song_name == song_name && vote.artist_name == artist_name }
        all_song_votes.map { |vote| vote.user.city != nil && votes_hash[vote.user.city] ? votes_hash[vote.user.city] += 1 : votes_hash[vote.user.city] = 1 }
        votes_hash
    end
    
end
