class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :room_type
      t.text :description
      t.integer :number_of_bathrooms
      t.integer :number_of_bedrooms
      t.integer :number_of_beds
      t.integer :host_id
      t.integer :max_occupants
      t.string :city
      t.string :neighborhood
      t.text :policies
      t.float :default_price_per_night

      t.timestamps

    end
  end
end
