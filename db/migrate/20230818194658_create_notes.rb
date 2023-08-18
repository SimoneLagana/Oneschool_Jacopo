class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes, id: false do |t|
      t.string :id, primary_key: true
      #forse in questo caso conviene avere l'id di base?
      t.string :CFprof
      t.string :CFstudent
      t.datetime :date
      t.text :description
      t.timestamps
    end
  end
end
