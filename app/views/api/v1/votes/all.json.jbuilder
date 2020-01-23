
json.votes @votes do |vote|
    json.vote(artistName: vote[0][0], songName: vote[0][1], voteCount: vote[1])
end