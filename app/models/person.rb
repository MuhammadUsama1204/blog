class Person < ApplicationRecord
    before_create :usercheck
   
    validates :name, presence: true
    validates :age, presence: true, numericality: { greater_than: 18}
  

    private
    def usercheck
        self.name = name.downcase if name.present?
    end
  
end
