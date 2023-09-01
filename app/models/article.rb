class Article < ApplicationRecord
    include Visible
  
    has_many :comments, dependent: :destroy
  
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
#calls backs
    before_validation :title_check
    private
    def title_check
      self.title = title.downcase if title.present?
     
    end
  end
  