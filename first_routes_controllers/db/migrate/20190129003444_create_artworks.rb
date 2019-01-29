class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.references :users, index: true, foreign_key: true
      # t.string :title, default: 'Untitled', null: false
      # t.string :image_url, null: false
      t.timestamps
    end
  end
end
