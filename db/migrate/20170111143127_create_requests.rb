class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :availabilities_id
      t.integer :guests_id
      t.text :guest_introduction

      t.timestamps

    end
  end
end
