class Meeting < Commitment
    validates :CFfamily, prensence: true
    validates :link, presence:true
end
