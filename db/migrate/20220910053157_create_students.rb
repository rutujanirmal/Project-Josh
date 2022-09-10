class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :student_id
      t.string :student_name
      t.string :class
      t.string :roll_no
      t.string :batch
      t.timestamps
    end
  end
end
