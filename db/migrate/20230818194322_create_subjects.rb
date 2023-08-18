class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects, id: false, primary_key: [:school_code,:CFprof, :class_code, :name] do |t|
      t.string :weekday
      t.time :hour
      t.string :school_code
      t.string :CFprof
      t.string :class_code
      t.string :name
      t.timestamps
    end
    #add_index :subject, [:weekday, :hour]
    
  end
end
