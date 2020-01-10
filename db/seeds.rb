# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#   destroys seeded data on reseed

User.destroy_all
Song.destroy_all
Vote.destroy_all
Follow.destroy_all
Artist.destroy_all


#User params:
    # :first_name, :last_name, :city, :state, :country, :phone_number, :username, :password_digest

jack = User.create(first_name: 'Jack', last_name: 'Staffen', city: 'New York', country: 'USA', phone_number: '917-801-2389', username: 'jackattack', password_digest: '1111')
eliza = User.create(first_name: 'Eliza', last_name: 'Callahan', city: 'New York', country: 'USA', phone_number: '718-5434-2343', username: 'elcal', password_digest: '2222')
evan = User.create(first_name: 'Evan', last_name: 'Staffen', city: 'Boston', country: 'USA', phone_number: '124-456-7891')


#Artist params:
    #:name, :api_artist:id

    beyonce = Artist.create(name: "Beyonce", api_artist_id: '6vWDO969PvNqNYHIOW5v0m')
    nirvana = Artist.create(name: "Nirvana", api_artist_id: '6olE6TJLqED3rqDCT0FyPh')

#Song params:
    # :name, :album, :artist_id, :api_song_id, :api_artist_id

crazy_in_love = Song.create(name: 'Crazy In Love', artist_id: beyonce.id, api_song_id: '5IVuqXILoxVWvWEPm82Jxr', api_artist_id: '6vWDO969PvNqNYHIOW5v0m')

smells_like_teen_spirit = Song.create(name: "Smells Like Teen Spirit", artist_id: nirvana.id, api_song_id: '5ghIJDpPoe3CfHMGu71E6T', api_artist_id: '6olE6TJLqED3rqDCT0FyPh')


#Vote params:
    #:user_id, :song_id, :api_song_id

u1s1v1 = Vote.create(user_id: jack.id, song_id: crazy_in_love.id, api_song_id: crazy_in_love.api_song_id)
u2s1v2 = Vote.create(user_id: eliza.id, song_id: crazy_in_love.id, api_song_id: crazy_in_love.api_song_id)




