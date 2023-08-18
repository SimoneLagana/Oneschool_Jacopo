class Family < User
    belongs_to :student, foreign_key: childCF

    validates :birthdate, absence: true
    validates :familyCF, absence: true
    validates :classCode, absence: true
end
