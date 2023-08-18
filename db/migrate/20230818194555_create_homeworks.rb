class CreateHomeworks < ActiveRecord::Migration[7.0]
  def change
    create_table :homeworks, id: false, primary_key: [:date, :school_code, :class_code, :CFprof, :subject_name] do |t|
      t.boolean :delivered
      t.text :text
      t.datetime :date
      t.string :name
      t.string :school_code
      t.string :class_code
      t.string :CFprof
      t.string :subject_name
      t.timestamps
    end
  end
end
