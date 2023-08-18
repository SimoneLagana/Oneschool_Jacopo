class CreateCommunications < ActiveRecord::Migration[7.0]
  def change
    create_table :communications, id: false do |t|
      t.string :id, primary_key: true
      t.string :title
      t.text :text
      t.date :date
      t.timestamps
    end
  end
end
