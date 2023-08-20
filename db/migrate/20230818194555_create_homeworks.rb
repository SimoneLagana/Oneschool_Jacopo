class CreateHomeworks < ActiveRecord::Migration[7.0]
  def change
    create_table :homeworks, id: false, primary_key: [:date, :school_code, :class_code, :weekday, :time, :subject_name] do |t|
      t.boolean :delivered, default: false
      t.text :text
      t.datetime :date
      t.string :name
      t.string :time
      t.string :weekday
      t.string :school_code
      t.string :class_code
      t.string :CFprof
      t.string :subject_name
      t.timestamps
    end
    add_index :homeworks, [:date, :school_code, :class_code, :weekday, :time, :subject_name], unique: true, name: 'chiave_primaria_homeworks'

  end
end
