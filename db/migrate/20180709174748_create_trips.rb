class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :trip_title
      t.string :itinerary
      t.float :rating
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
