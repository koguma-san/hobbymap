class CreateRounds < ActiveRecord::Migration[7.1]
  def change
    create_table :rounds do |t|
      t.references :user  , null: false, foreign_key: true
      t.string     :course, null: false
      t.text       :round_memo
      t.date       :round_date, null: false
      t.timestamps
    end
  end
end
