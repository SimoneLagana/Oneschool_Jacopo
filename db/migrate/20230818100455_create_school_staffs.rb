class CreateSchoolStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :school_staffs do |t|

      t.timestamps
    end
  end
end
