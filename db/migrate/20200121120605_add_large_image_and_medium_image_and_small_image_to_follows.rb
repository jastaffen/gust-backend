class AddLargeImageAndMediumImageAndSmallImageToFollows < ActiveRecord::Migration[6.0]
  def change
    add_column :follows, :large_image, :string
    add_column :follows, :medium_image, :string
    add_column :follows, :small_image, :string
  end
end
