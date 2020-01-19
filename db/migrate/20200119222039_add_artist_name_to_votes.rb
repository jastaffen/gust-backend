class AddArtistNameToVotes < ActiveRecord::Migration[6.0]
  def change
    add_column :votes, :artist_name, :string
  end
end
