json.key_format! camelize: :lower


json.array! @users do |user|
    json.(user, :id, :first_name, :last_name, :username, :city, :country, :state, :phone_number)

end

