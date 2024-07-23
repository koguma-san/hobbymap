class CreateRounds < ActiveRecord::Migration[7.1]
  def change
    create_table :rounds do |t|
      t.references :user  , null: false, foreign_key: true
      t.string     :course, null: false
      t.text       :round_memo
      t.date       :round_date, null: false
      t.timestamps
    end
  
    add_column :rounds, :total_strokes, :integer, default: 0, null: false
    add_column :rounds, :total_putts, :integer, default: 0, null: false
  end
end
