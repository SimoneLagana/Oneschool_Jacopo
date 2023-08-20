class AddForeignKeyToStudents < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :family_students, :users, column: :CFfamily, primary_key: :CF
    add_foreign_key :family_students, :users, column: :CFstudent, primary_key: :CF
    add_foreign_key :commitments, :users, column: :CFprof, primary_key: :CF
    add_foreign_key :commitments, :users, column: :CFfamily, primary_key: :CF
    add_foreign_key :subjects, :users, column: :CFprof, primary_key: :CF
    add_foreign_key :notes, :users, column: :CFprof, primary_key: :CF
    add_foreign_key :notes, :users, column: :CFstudent, primary_key: :CF
    add_foreign_key :grades, :users, column: :CFstudent, primary_key: :CF
    add_foreign_key :grades, :users, column: :CFprof, primary_key: :CF
    add_foreign_key :absences, :users, column: :CFstudent, primary_key: :CF
    add_foreign_key :absences, :users, column: :CFprof, primary_key: :CF
    add_foreign_key :homeworks, :users, column: :CFprof, primary_key: :CF
    #add_index :subjects, [:school_code, :class_code, :name,:weekday, :time ], unique: true
    
  end 
end
