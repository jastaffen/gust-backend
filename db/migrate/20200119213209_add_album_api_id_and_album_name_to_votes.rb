class AddAlbumApiIdAndAlbumNameToVotes < ActiveRecord::Migration[6.0]
  def change
    add_column :votes, :api_album_id, :string
    add_column :votes, :album_name, :string
  end
end
