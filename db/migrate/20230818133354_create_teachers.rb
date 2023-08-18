class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers, id: false do |t|
      t.timestamps
    end
  end
end
