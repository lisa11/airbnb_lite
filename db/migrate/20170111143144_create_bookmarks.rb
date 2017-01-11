class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :listings_id
      t.integer :guests_id

      t.timestamps

    end
  end
end
