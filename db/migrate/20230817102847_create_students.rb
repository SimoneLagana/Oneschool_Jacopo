class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.date :birthdate
      t.references :user, foreign_key: true
      #t.references :family, foreign_key: true, primary_key: 'user_cf'
      #t.string :class_code, null: false, index: true, foreign_key: { to_table: 'classes' }
      #t.references :school, foreign_key: true
      t.timestamps
    end
  end
end
