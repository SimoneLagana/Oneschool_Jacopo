class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students, id: false do |t|
      
      t.timestamps
    end
    #add_foreign_key :students, :class_rooms, column: :class_code
    #add_foreign_key :students, :class_rooms, column: :school_code
    #add_index :students, [:class_code, :school_code]
  end
end
