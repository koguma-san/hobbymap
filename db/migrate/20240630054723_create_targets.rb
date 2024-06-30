class CreateTargets < ActiveRecord::Migration[7.1]
  def change
    create_table :targets do |t|
      t.integer    :target_score , null: false
      t.date       :deadline     , null: false 
      t.references :user         , null: false, foreign_key: true
      t.timestamps
    end
  end
end
