class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: false do |t|
      t.string :name
      t.string :surname
      t.string :CF, primary_key: true
      t.string :mail
      t.string :password
      t.string :school_code
      t.string :type, null: false
      
      #student
      t.datetime :birthdate
      t.string :student_class_code

      t.timestamps
    end

    #add_foreign_key :users, :schools, column: :school_code, primary_key: :code
  end
end


