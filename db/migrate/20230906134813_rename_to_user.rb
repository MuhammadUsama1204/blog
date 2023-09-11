class RenameToUser < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :confirmation_email, :email_confirmation
  end
end
