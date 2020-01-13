json.key_format! camelize: :lower


json.array! @users do |user|
    json.(user, :id, :first_name, :last_name, :username, :city, :country, :phone_number)
    json.song_count user.votes.length

    if user.songs.length >= 1 
        json.songs user.songs
    end
    
end

