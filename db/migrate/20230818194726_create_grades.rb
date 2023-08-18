class CreateGrades < ActiveRecord::Migration[7.0]
  def change
    create_table :grades do |t|
      t.integer :value
      t.string :CFprof
      t.string :school_code
      t.string :class_code
      t.string :CFstudent
      t.string :subject_name
      t.datetime :date
      t.timestamps
    end
  end
end
