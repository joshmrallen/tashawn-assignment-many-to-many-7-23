class CreateBallStudentsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :ball_students do |t|
      t.ball_id
      t.student_id
    end
  end
end
