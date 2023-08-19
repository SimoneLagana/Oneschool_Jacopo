class Subject < ApplicationRecord
    belongs_to :users, foreign_key: 'CFprof', primary_key: 'CF', class_name: "User"

    validate :valid_class_code
    validate :valid_school_code
    validates :class_code, presence: true
    validates :school_code, presence: true
    validates :weekday, presence: true
    validates :time, presence: true
    validates :CFprof, presence: true
    validates :name, presence: true

    def valid_class_code
        return false unless class_code.present?
        
        unless ClassRoom.exists?(class_code: class_code, school_code: school_code) 
          errors.add(:class_code, 'is not a valid class code for the given school')
        end
      end
    
      def valid_school_code
        return unless school_code.present?
    
        unless ClassRoom.exists?(class_code: class_code, school_code: school_code) 
            errors.add(:school_code, 'is not a valid school code for the given class')
        end
      end
     
end
