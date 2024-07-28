class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :book_title     , null: false 
      t.string :author         , null: false
      t.text :review 
      t.integer :rating        , null: false 
      t.date :registration_date, null: false

      t.timestamps
    end
  end
end
