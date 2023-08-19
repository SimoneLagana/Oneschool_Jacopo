class SchoolStaff < User
    validates :birthdate, absence: true
    validates :student_class_code, absence: true
end
