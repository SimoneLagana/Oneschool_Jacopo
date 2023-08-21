class CreateGrades < ActiveRecord::Migration[7.0]
  def change
    create_table :grades, id: false, primary_key: [:school_code, :CFstudent, :class_code, :subject_name, :date] do |t|
      t.float :value
      t.string :CFprof
      t.string :school_code
      t.string :class_code
      t.string :CFstudent
      t.string :subject_name
      t.string :weekday
      t.string :time
      t.datetime :date
      t.timestamps
    end
    add_index :grades, [:school_code, :CFstudent, :class_code, :subject_name, :date], unique: true, name: 'chiave_primaria_grades'
  end
end
