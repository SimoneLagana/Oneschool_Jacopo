class School < ApplicationRecord
    has_many :users, foreign_key: 'school_code', primary_key: 'code'
    has_many :class_rooms, foreign_key: 'school_code', primary_key: 'code'
    
    #validates :name, presence: true
    #validates :code, presence: true, uniqueness: true
    
end
