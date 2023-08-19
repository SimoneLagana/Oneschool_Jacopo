class Grade < ApplicationRecord
    belongs_to :users, foreign_key: 'CFstudent', primary_key: 'CF', class_name: "User"
    belongs_to :users, foreign_key: 'CFprof', primary_key: 'CF', class_name: "User"

    validate :valid_foreign_key
    validates :class_code, presence: true
    validates :school_code, presence: true
    validates :weekday, presence: true
    validates :time, presence: true
    validates :date, presence: true
    validates :CFprof, presence: true
    validates :value, presence: true
    validates :subject_name, presence: true
    validates :CFstudent, presence: true

    def valid_foreign_key
        return false, unless (class_code.present? && school_code.present? && weekday.present? && time.present? && subject_name.present?)
        
        unless Subject.exists?(class_code: class_code, school_code: school_code, weekday: weekday, time: time, name: subject_name) 
          errors.add(:class_code, 'is not a valid class code for the given school')
        end
      end
    end
end
