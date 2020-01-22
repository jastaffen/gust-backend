json.key_format! camelize: :lower

json.array! @follows do |follow|
    json.(follow, :id, :user_id, :api_artist_id, :large_image, :medium_image, :small_image, :artist_name)
end