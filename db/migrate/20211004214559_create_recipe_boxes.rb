class CreateRecipeBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_boxes do |t|
      t.integer :user_id, null: false
      t.integer :recipe_id, null: false
      t.timestamps
    end

    add_index :recipe_boxes, :user_id
    add_index :recipe_boxes, :recipe_id
    add_index :recipe_boxes, [:user_id, :recipe_id], unique: true
  end
end
