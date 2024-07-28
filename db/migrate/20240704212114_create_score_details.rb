class CreateScoreDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :score_details do |t|
      t.references :score     , null: false, foreign_key: true
      t.integer :hole_number  , null: false
      t.integer :strokes      , null: false
      t.integer :putts        , null: false
      t.text :comments
      t.timestamps
    end
  end
end
