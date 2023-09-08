class AddSubmissionDateToArticleClient < ActiveRecord::Migration[7.0]
  def change
    add_column :article_clients, :submission_date, :date
  end
end
