class CreateBallStudentsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :ball_students do |t|
      t.integer :ball_id
      t.integer :student_id
    end
  end
end
