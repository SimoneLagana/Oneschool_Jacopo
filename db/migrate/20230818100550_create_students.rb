class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students id: false do |t|
      add_foreign_key :students, :classes, column: [:school_code, :class_code], primary_key: [:code, :school]
      t.timestamps
    end
  end
end
