class CreateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :schools, id: false do |t|
      t.string :address
      t.string :name
      t.string :code, primary_key: true
      t.string :school_type
      t.timestamps
    end
  end
end
