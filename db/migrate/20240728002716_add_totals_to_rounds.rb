class AddTotalsToRounds < ActiveRecord::Migration[7.1]
  def change
    add_column :rounds, :total_strokes, :integer, default: 0, null: false
    add_column :rounds, :total_putts, :integer, default: 0, null: false
  end
end
