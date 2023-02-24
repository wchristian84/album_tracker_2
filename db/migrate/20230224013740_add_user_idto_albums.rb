class AddUserIdtoAlbums < ActiveRecord::Migration[7.0]
  def change
    add_column :albums, :user_id, :integer
    add_foreign_key :albums, :users
  end
end
