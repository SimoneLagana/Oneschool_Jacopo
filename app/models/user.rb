class User < ApplicationRecord
    belongs_to :school, foreign_key: 'school_code', primary_key: 'code'

    #validates :name, presence: true
    #validates :surname, presence: true
    #validates :CF, presence: true, uniqueness: true
    #validates :mail, presence: true, uniqueness: true
    #validates :password, presence: true
end
