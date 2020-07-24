class CreateGradeLevelsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :grade_levels do |t|
      t.string :grade #Added so db:seed works
      t.integer :teacher_id
      t.integer :student_id
    end
  end
end
