class CreateArticlesCommentsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :articles, :comments
  end
end
