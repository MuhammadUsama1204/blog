class CreateArticleClients < ActiveRecord::Migration[7.0]
  def change
    create_table :article_clients do |t|
      t.references :client, null: false, foreign_key: true
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
