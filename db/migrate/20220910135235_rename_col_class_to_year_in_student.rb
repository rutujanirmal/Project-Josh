class RenameColClassToYearInStudent < ActiveRecord::Migration[6.0]
  def change
    rename_column :students, :class, :year
  end
end
