class AddToPerson < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :dob, :date
  end
end
