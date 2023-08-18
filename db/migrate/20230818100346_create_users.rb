class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: false do |t|
      t.string :name
      t.string :surname
      t.string :CF, primary_key: true
      t.string :mail
      t.string :password
      t.string :school_code
      t.string :birthdate
      # si creano delle ridondanze
      t.string :childCF
      t.string :familyCF
      # ---------------------------
      t.string :class_code
      t.timestamps
    end
  end
end
