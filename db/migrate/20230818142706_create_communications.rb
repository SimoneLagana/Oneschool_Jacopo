class CreateCommunications < ActiveRecord::Migration[7.0]
  def change
    create_table :communications do |t|
      t.string :title
      t.text :text
      t.datetime :date
      t.timestamps
    end
  end
end
