class User < ApplicationRecord
  #self join
  belongs_to :manager, class_name: "User", optional: true
  has_many :subordinates, class_name: "User", foreign_key: "manager_id"
  validates :email, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }
  validates :password, presence: true, length: { in: 4..10 }
  validates :email, uniqueness: true

  #validates :my_email_attribute,email: true
  #validates :email, uniqueness: true, on: :create
  #validates :email,confirmation: true
  validates :email, confirmation: { case_sensitive: false }
  validates :email_confirmation, presence: true

end
