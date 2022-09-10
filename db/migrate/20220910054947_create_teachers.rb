class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :teacher_id
      t.string :teacher_name
      t.string :email
      t.timestamps
    end
  end
end
