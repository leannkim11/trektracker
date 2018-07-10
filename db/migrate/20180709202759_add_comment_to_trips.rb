class AddCommentToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :comment, :string
  end
end
