class RemoveArtistIdFromAlbums < ActiveRecord::Migration[7.0]
  def change
    remove_column :albums, :artist_id
  end
end
