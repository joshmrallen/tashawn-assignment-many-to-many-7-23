class CreateStudentClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :student_clubs do |t|
      t.integer :student_id
      t.integer :club_id
    end
  end
end
