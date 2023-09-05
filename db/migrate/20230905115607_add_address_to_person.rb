class AddAddressToPerson < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :address, :stringr
  end
end
