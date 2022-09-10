class RemoveIdColFromTables < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :student_id, :string
    remove_column :teachers, :teacher_id, :string
    remove_column :submissions, :submission_id, :string
  end
end
