class AddForeignKeyToStudents < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :family_students, :users, column: :CFfamily, primary_key: :CF
    add_foreign_key :family_students, :users, column: :CFstudent, primary_key: :CF
    add_foreign_key :commitments, :users, column: :CFprof, primary_key: :CF
    add_foreign_key :commitments, :users, column: :CFfamily, primary_key: :CF

    #add_index :students, [:student_class_code, :school_code]
    #add_foreign_key :users, :class_rooms, column: :student_class_code, primary_key: :class_code
    #add_foreign_key :users, :class_rooms, column: :school_code, primary_key: :school_code
    #add_foreign_key :students, :class_rooms, column: :surname, primary_key: :class_code
    #add_foreign_key :students, :class_rooms, column: :school_code, primary_key: :school_code
    
  end 
end
