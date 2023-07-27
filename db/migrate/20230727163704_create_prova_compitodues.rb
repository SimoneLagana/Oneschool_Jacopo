class CreateProvaCompitodues < ActiveRecord::Migration[7.0]
  def change
    create_table :prova_compitodues, id: false, primary_key: [:titolo, :codice] do |t|
      t.string :titolo
      t.integer :codice, primary_key: true
      t.timestamps
    end
  end
end
