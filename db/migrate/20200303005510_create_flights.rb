class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.datetime :departs_at
      t.integer :passenger_id
      t.string :description
      t.boolean :message_sent, { :default => false}

      t.timestamps
    end
  end
end
