class DropArtist < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :albums, column: :artist_id
    drop_table :artists
  end
end
