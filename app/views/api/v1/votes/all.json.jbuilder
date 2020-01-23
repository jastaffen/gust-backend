json.votes @votes do |vote|
    json.vote(artist_name: vote[0][0], song_name: vote[0][1], vote_count: vote[1])
end