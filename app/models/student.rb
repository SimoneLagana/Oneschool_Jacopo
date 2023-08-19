class Student < User
  #has_many :family_student, foreign_key: 'CFstudent', primary_key: 'CF'

    validates :birthdate, presence: true
    validates :student_class_code, presence: true

    validate :valid_student_class_code
    validate :valid_student_school_code

    def valid_student_class_code
        return false unless student_class_code.present?
        
        unless ClassRoom.exists?(class_code: student_class_code, school_code: school_code) 
          errors.add(:student_class_code, 'is not a valid class code for the given school')
        end
      end
    
      def valid_student_school_code
        return unless school_code.present?
    
        unless ClassRoom.exists?(class_code: student_class_code, school_code: school_code) 
            errors.add(:school_code, 'is not a valid school code for the given class')
        end
      end
end
