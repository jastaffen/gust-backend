json.key_format! camelize: :lower

json.user(@user, :id, :first_name, :last_name, :username, :password_digest, :city, :country, :phone_number)

if @token
    json.jwt(@token)
end