class Student < User
    belongs_to :family, foreign_key: :familyCF
    # manca ancora da definire la migrazione e il modello di Class
    validates :childCF, absence: true
end
