class CreateAbsences < ActiveRecord::Migration[7.0]
  def change
    create_table :absences, id: false do |t|
      t.string :CFprof
      t.string :CFstudent
      t.datetime :date
      t.string :school_code
      t.string :class_code
      t.string :subject_name
      t.boolean :justified
      t.timestamps
    end
  end
end
