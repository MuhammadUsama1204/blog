class RemoveFromPerson < ActiveRecord::Migration[7.0]
  def change
    remove_column :people, :age
  end
end
