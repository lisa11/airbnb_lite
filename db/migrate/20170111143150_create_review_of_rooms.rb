class CreateReviewOfRooms < ActiveRecord::Migration
  def change
    create_table :review_of_rooms do |t|
      t.integer :accuracy
      t.integer :communication
      t.integer :cleanliness
      t.integer :location
      t.integer :check_in
      t.integer :value
      t.text :content
      t.integer :guests_id

      t.timestamps

    end
  end
end
