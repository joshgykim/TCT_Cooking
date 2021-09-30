class CreateCategorizations < ActiveRecord::Migration[5.2]
  def change
    create_table :categorizations do |t|
      t.integer :category_id, null: false
      t.integer :recipe_id, null: false
      t.timestamps
    end

    add_index :categorizations, :category_id
    add_index :categorizations, :recipe_id
  end
end
