class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects, id: false, primary_key: [:school_code, :class_code, :name,:weekday, :time ] do |t|
      t.string :weekday
      t.string :time
      t.string :school_code
      t.string :CFprof
      t.string :class_code
      t.string :name
      t.timestamps
    end
    add_index :subjects, [:school_code, :class_code, :weekday, :time], unique: true, name: 'chiave_primaria_subjects'
    
  end
end
