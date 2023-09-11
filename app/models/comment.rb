class Comment < ApplicationRecord
  include Visible

   belongs_to :article
  # has_and_belongs_to_many :articles
end
