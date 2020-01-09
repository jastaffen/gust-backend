class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :album
      t.integer :artist_id
      t.string :api_song_id
      t.string :api_artist_id

      t.timestamps
    end
  end
end
