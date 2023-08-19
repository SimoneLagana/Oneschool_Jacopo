class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.string :CFprof
      t.string :CFstudent
      t.datetime :date
      t.text :description
      t.timestamps
    end
  end
end
