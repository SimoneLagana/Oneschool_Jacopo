class AddForeignKeyToUsers < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :users, :schools, column: :school_code, primary_key: :code
    #add_index :users, [:student_class_code, :student_school_code]
    add_foreign_key :users, :class_rooms, column: :student_school_code, primary_key: [:class_code,:school_code]
    add_foreign_key :users, :class_rooms, column: :student_class_code, primary_key: [:class_code, :school_code]
  end
end
