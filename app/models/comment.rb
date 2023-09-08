class Comment < ApplicationRecord
  include Visible

  # belongs_to :article
  has_many_and_belongs_to :articles
end
