class CreateAlbumsUsersJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :albums, :users do |t|
      t.index :user_id
      t.index :album_id

      t.timestamps
    end
  end
end
