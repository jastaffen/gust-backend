class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.string :api_song_id
      t.string :api_artist_id
      t.string :song_name

      t.timestamps
    end
  end
end
