class CreateScores < ActiveRecord::Migration[8.0]
  def change
    create_table :scores do |t|
      t.integer :workout_id
      t.string :athlete_id
      t.string :score

      t.timestamps
    end
  end
end
