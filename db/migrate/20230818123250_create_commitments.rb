class CreateCommitments < ActiveRecord::Migration[7.0]
  def change
    create_table :commitments,id: false, primary_key: [:date,:CFprof] do |t|
      t.string :title
      t.date :date
      t.string :CFprof
      t.timestamps
    end
  end
end
