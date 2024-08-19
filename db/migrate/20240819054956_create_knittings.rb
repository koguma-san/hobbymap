class CreateKnittings < ActiveRecord::Migration[7.1]
  def change
    create_table :knittings do |t|
      t.string :work
      t.text :recipe
      t.text :yarn
      t.string :hook_number
      t.text :image
      t.timestamps
    end
  end
end
