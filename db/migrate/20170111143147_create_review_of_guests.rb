class CreateReviewOfGuests < ActiveRecord::Migration
  def change
    create_table :review_of_guests do |t|
      t.integer :rating
      t.text :content

      t.timestamps

    end
  end
end
