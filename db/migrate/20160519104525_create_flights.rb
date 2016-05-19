class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.datetime :start_date
      t.integer :duration
      t.references :start_airport, index: true, foreign_key: true
      t.references :finish_airport, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
