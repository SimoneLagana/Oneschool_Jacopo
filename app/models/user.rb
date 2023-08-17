class User < ApplicationRecord
    belongs_to :school, foreign_key: :school_code
    #has_one :school_staff
    #has_many :families, foreign_key: :user_cf, primary_key: :CF
    #has_many :students, foreign_key: :user_cf, primary_key: :CF
  
    validates :name, presence: true
    validates :surname, presence: true
    validates :CF, presence: true, uniqueness: true
    validates :mail, presence: true, uniqueness: true
    validates :password, presence: true
end
