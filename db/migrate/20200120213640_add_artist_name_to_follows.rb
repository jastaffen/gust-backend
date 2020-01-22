class AddArtistNameToFollows < ActiveRecord::Migration[6.0]
  def change
    add_column :follows, :artist_name, :string
  end
end
