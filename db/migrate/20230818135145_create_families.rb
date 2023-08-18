class CreateFamilies < ActiveRecord::Migration[7.0]
  def change
    create_table :families, id: false do |t|

      t.timestamps
    end
  end
end
