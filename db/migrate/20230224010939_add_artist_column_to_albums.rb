class AddArtistColumnToAlbums < ActiveRecord::Migration[7.0]
  def change
    add_column(:albums, :artist, :string)
  end
end
