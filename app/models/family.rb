class Family < User
    #has_many :family_student, foreign_key: 'CFfamily', primary_key: 'CF'

    validates :birthdate, absence: true
    validates :student_class_code, absence: true
end
