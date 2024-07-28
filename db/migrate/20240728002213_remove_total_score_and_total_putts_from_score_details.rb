class RemoveTotalScoreAndTotalPuttsFromScoreDetails < ActiveRecord::Migration[7.1]
  def change
    remove_column :score_details, :total_score, :integer
    remove_column :score_details, :total_putts, :integer
  end
end
