class RenameToUser < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :confirmation_email, :email_confirmation
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
