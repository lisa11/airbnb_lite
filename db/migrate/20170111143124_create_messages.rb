class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :guests_id
      t.integer :hosts_id
      t.time :time
      t.date :date
      t.text :content

      t.timestamps

    end
  end
end
