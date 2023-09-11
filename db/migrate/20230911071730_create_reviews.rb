class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.string :article_id
      t.string :post_id
      t.timestamps
    end
  end
end
