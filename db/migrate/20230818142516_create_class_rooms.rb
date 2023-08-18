class CreateClassRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :class_rooms, id: false, primary_key: [:class_code, :school_code] do |t|
      t.string :class_code
      t.string :school_code
      t.timestamps
    end
    #add_index :class_rooms, [:schoolcode, :classcode], unique: true
    #add_foreign_key :class_rooms, :schools, column: :schoolcode, primary_key: :code
  end
  
end
