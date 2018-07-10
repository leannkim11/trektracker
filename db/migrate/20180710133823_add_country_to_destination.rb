class AddCountryToDestination < ActiveRecord::Migration[5.2]
  def change
    add_column :destinations, :country, :string
    rename_column :destinations, :name, :city
  end
end
