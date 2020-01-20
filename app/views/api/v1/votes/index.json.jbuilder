json.key_format! camelize: :lower

json.array! @votes do |vote|
    json.(vote, :id, :artist_name, :api_artist_id, :song_name, :api_song_id, :user_id, :album_name)
end