class RemoveCommentFromTrips < ActiveRecord::Migration[5.2]
  def change
    remove_column :trips, :comment, :float
  end
end
