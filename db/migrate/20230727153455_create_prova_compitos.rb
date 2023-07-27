class CreateProvaCompitos < ActiveRecord::Migration[7.0]
  def change
    create_table :prova_compitos do |t|
      t.datetime :data
      t.string :giorno
      t.integer :codicescuola
      t.integer :codiceclasse
      t.string :prof
      t.integer :voto

      t.timestamps
    
    end
  end
end
