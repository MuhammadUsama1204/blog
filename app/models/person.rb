class Person < ApplicationRecord
    before_create :usercheck
    # around_create :user_gender

    validate :custom_dob_check
    validates :name, presence: true
    #validates :gender,  inclusion: { in: %w(Male Female male female), message: "must be 'Male' or 'Female'" }   #%W is for short handarray without using string in qoutations
   # validates :age, presence: true, numericality: { greater_than: 18}


    private
    def usercheck
        self.name = name.downcase if name.present?
    end
    #custom validation

    def custom_dob_check

        parsed_dob = Date.strptime(dob, "%b %d %Y --") rescue nil
        if !parsed_dob || parsed_dob == Date.current
            errors.add(:dob, "should not be today's date")
        end

    end

    # def user_gender
    #     self.gender = gender.downcase if name.present?
    # end

end
