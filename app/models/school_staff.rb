class SchoolStaff < User
    validates :birthdate, absence: true
    validates :familyCF, absence: true
    validates :childCF, absence: true
    validates :classCode, absence: true
end
