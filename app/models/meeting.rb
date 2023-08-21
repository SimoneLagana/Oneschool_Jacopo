class Meeting < Commitment
    validates :CFfamily, presence: true
    validates :link, presence:true
end
