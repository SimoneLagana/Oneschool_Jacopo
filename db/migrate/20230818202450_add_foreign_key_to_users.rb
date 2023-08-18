class AddForeignKeyToUsers < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :users, :schools, column: :school_code, primary_key: :code
  end
end
