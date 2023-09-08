class ArticleClient < ApplicationRecord
  belongs_to :client
  belongs_to :article
end
