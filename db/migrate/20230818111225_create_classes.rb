class CreateClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :classes do |t|

      t.timestamps
    end
  end
end
