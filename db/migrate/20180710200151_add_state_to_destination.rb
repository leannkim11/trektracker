class AddStateToDestination < ActiveRecord::Migration[5.2]
  def change
     add_column :destinations, :state, :string
  end
end
