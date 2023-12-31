class Article < ApplicationRecord
    include Visible
   # byebug
    #self.locking_column = :title
    # scope :status, -> { where(status: 'archived') }
    # scope :tilte, -> { where(title: true) }
#  enum :status, [:public, :private, :archived]
    #polymorphic association
    has_many :reviews, as: :reviewable
    has_many :comments, dependent: :destroy

    # has_and_belongs_to_many :comment
    # has_many :article_client
    # has_many :client, through: :article_client
    # has_one :client
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
#calls backs
    before_validation :title_check
    before_create :greeting
    after_save :saving_Confirmation
    after_update :saving_Confirmation
    after_destroy :Deleting_message
    after_initialize :object_creation
    # before_save if: :check_body
    def title_check
      self.title = title.downcase if title.present?

    end

    def saving_Confirmation
      puts "Your Article saved at our site"
    end
    # def check_body
    #   self.body?
    # end

    def object_creation
      puts "Article object is created!"
    end

    def Deleting_message
      puts "Your Article is deleted"
    end
    def greeting
      puts "Hi wellcome to our blog site"
    end
  end
