class Admin < ApplicationRecord
    validates :name, presence: true
    validates :surname, presence: true
    validates :CF, presence: true, uniqueness: true
    validates :mail, presence: true, uniqueness: true
    validates :password, presence: true
end
