class CreateAbsences < ActiveRecord::Migration[7.0]
  def change
    create_table :absences, id: false, primary_key: [:school_code, :CFstudent, :date, :class_code, :name, :weekday, :time ] do |t|
      t.string :CFprof
      t.string :CFstudent
      t.datetime :date
      t.string :school_code
      t.string :class_code
      t.string :subject_name
      t.string :weekday
      t.string :time
      t.boolean :justified, default: false
      t.timestamps
    end
    add_index :absences, [:school_code, :CFstudent, :date, :class_code, :weekday, :time ], unique: true, name: 'chiave_primaria_absences'
  end
end
