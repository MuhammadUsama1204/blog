class Client < ApplicationRecord
  has_many :article_client
  has_many :article, through: :article_client
  # belongs_to :article
end
