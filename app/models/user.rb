class User < ApplicationRecord
    belongs_to :school, foreign_key: 'school_code', primary_key: 'code'
    has_many :family_student, foreign_key: 'CFfamily', primary_key: 'CF'
    has_many :family_student, foreign_key: 'CFstudent', primary_key: 'CF'
    has_many :commitments, foreign_key: 'CFprof', primary_key: 'CF'
    has_many :commitments, foreign_key: 'CFfamily', primary_key: 'CF'
    has_many :subjects, foreign_key: 'CFprof', primary_key: 'CF'
    has_many :notes, foreign_key: 'CFprof', primary_key: 'CF'
    has_many :notes, foreign_key: 'CFstudent', primary_key: 'CF'
    has_many :grades, foreign_key: 'CFstudent', primary_key: 'CF'
    has_many :grades, foreign_key: 'CFprof', primary_key: 'CF'
    has_many :absences, foreign_key: 'CFstudent', primary_key: 'CF'
    has_many :absences, foreign_key: 'CFprof', primary_key: 'CF'
    has_many :homeworks, foreign_key: 'CFprof', primary_key: 'CF'
    validates :name, presence: true
    validates :surname, presence: true
    validates :CF, presence: true, uniqueness: true
    validates :mail, presence: true, uniqueness: true
    validates :password, presence: true
    
end
