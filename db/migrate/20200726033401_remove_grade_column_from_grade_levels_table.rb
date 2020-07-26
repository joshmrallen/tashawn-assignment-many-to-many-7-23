class RemoveGradeColumnFromGradeLevelsTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :grade_levels, :grade
  end
end
