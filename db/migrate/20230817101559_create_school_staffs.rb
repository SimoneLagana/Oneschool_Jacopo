class CreateSchoolStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :school_staffs do |t|
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
