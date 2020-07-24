class CreateBallsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :balls do |t|
      t.string :ball_type
      t.boolean :inflated
    end
  end
end
