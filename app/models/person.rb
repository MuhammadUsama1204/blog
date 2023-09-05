class Person < ApplicationRecord
    before_create :usercheck
    # around_create :user_gender
    before_update :usercheck
    validate :custom_dob_check
    validates :name, presence: true
    #validates :gender,  inclusion: { in: %w(Male Female male female), message: "must be 'Male' or 'Female'" }   #%W is for short handarray without using string in qoutations
    validates :age, presence: true, numericality: { greater_than: 18}
  

    private
    def usercheck
        self.name = name.downcase if name.present?
    end
    #custom validation
    # def custom_dob_check
    #     # Define an array of potential date formats to check
    #     # date_formats = ["%Y-%m-%d", "%d/%m/%Y", "%m-%d-%Y", "%b %d, %Y", "%d %b %Y --"]

    #     byebug
    #     # Try to parse the date with each format until one succeeds
    #     parsed_dob = nil
    #     # date_formats.each do |format|
    #     parsed_dob = system.Date rescue nil
      
    #     if parsed_dob.nil?
    #       errors.add(:dob, "must be in a valid date format")
    #     end
        
    #     if parsed_dob == Date.current
            
    #       errors.add(:dob, "should not be today's date")
    #     end
    #   end
      

    def custom_dob_check
        
        if self.dob?
            age= Date.today.year - self.dob.year
        end
        if age <19
            errors.add(:dob, "you are under 18")
        end

        # parsed_dob = Date.strptime(dob, "%b %d %Y --") rescue nil
         
        # if parsed_dob == Date.current
        #     errors.add(:dob, "should not be today's date")
        # end
        
    end
    
    # def user_gender
    #     self.gender = gender.downcase if name.present?
    # end
  
end
