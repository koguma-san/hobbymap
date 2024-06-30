class CreateRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :records do |t|
      t.date       :record_date  , null: false
      t.string     :title        , null: false
      t.text       :record_memo  , null: false
      t.references :user         , null: false, foreign_key: true
      t.timestamps
    end
  end
end
