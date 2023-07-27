class CreateProvaCompitos < ActiveRecord::Migration[7.0]
  def change
    create_table :prova_compitos id: false do |t|
      t.datetime :data, primary_key: true
      t.string :giorno, primary_key: true
      t.integer :codicescuola, primary_key: true
      t.integer :codiceclasse, primary_key: true
      t.string :prof, primary_key: true
      t.integer :voto


      t.timestamps
    
    end
    
  end
end
