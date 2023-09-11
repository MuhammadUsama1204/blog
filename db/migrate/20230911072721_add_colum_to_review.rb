class AddColumToReview < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :reviewable_id, :integer
    add_column :reviews, :reviewable_type, :string
  end
end
