class Client < ApplicationRecord
  has_many :client_article
  has_many :article, through: :client_article
end
