class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.references :whiskey, null: false, foreign_key: true
      t.references :score_type, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
