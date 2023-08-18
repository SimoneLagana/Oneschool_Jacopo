class CreateClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :classes, id: false,primary_key: [:code, :school]  do |t|
      add_foreign_key :students, :subject, column: [:code, :school_code], primary_key: [:class_code, :school_code]
      t.string :code
      t.string :school
      t.timestamps
    end
  end
end
