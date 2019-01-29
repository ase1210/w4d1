class AddColumnsToArtwork < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :title, :string, default: 'Untitled', null: false
    add_column :artworks, :image_url, :string, null: false
    rename_column :artworks, :users_id, :artist_id
  end
end
