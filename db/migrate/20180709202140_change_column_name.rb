class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :trips, :rating, :comment
  end
end
