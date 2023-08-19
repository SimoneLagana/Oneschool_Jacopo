class RemoveForeignKey < ActiveRecord::Migration[7.0]
  def change
    
    remove_foreign_key :users, :schools, column: :school_code, primary_key: :code
    remove_index :students, [:class_code, :school_code]
    remove_foreign_key :students, :class_rooms, column: :class_code, primary_key: :class_code
    remove_foreign_key :students, :class_rooms, column: :school_code, primary_key: :school_code
    remove_index :class_rooms, [:school_code, :class_code], unique: true
    remove_foreign_key :class_rooms, :schools, column: :school_code, primary_key: :code
  end
end
