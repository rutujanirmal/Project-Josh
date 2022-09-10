class CreateSubmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :submissions do |t|
      t.string :submission_id
      t.string :subject
      t.string :batch
      t.string :details 
      t.datetime :deadline 
      t.bigint :teacher_id
      t.timestamps
    end

    add_foreign_key :submissions, :teachers, foreign_key: true
  end
end
