class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :request_id
      t.integer :review_of_guest_id
      t.integer :review_of_room_id

      t.timestamps

    end
  end
end
