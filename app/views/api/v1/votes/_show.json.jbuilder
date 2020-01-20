json.key_format! camelize: :lower

json.vote(@vote, :id, :artist_name, :api_artist_id, :song_name, :api_song_id, :user_id, :album_name)