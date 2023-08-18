class AddForeignKeyToClassRooms < ActiveRecord::Migration[7.0]
  def change
    add_index :class_rooms, [:school_code, :class_code], unique: true
    add_foreign_key :class_rooms, :schools, column: :school_code, primary_key: :code
  end
end
