class AddUserRefToPerson < ActiveRecord::Migration[7.0]
  def change
    add_reference :people, :user, foreign_key: true
  end
end
