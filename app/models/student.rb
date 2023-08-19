class Student < User
    belongs_to :class_room, foreign_key: ['class_code', 'school_code'], primary_key: ['class_code', 'school_code']
end
