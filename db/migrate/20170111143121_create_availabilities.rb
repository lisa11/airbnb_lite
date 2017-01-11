class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.integer :listings_id
      t.float :price
      t.date :night
      t.boolean :available

      t.timestamps

    end
  end
end
