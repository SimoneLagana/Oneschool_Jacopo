class Commitment < ApplicationRecord
    belongs_to :teachers, primary_key: :CFprof
end
