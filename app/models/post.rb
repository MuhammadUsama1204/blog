class Post < ApplicationRecord
  has_many :reviews, as: :reviewable
end
