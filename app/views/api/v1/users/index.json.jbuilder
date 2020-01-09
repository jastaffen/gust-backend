json.array! @users do |user|
    json.id user.id
    json.first_name user.first_name
    json.last_name user.last_name
    json.username user.username
    json.password_digest user.password_digest
    json.city user.city
    json.country user.country
    json.phone_number user.phone_number

    
    if user.songs.length >= 1 
        json.song_count user.votes.length
        json.songs user.songs
    end
    
end

