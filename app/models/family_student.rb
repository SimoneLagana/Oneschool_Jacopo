class FamilyStudent < ApplicationRecord
    belongs_to :family, foreign_key: 'CFfamily', primary_key: 'CF'
    belongs_to :student, foreign_key: 'CFstudent', primary_key: 'CF'
end
