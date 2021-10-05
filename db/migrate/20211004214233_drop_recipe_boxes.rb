class DropRecipeBoxes < ActiveRecord::Migration[5.2]
  def change
    drop_table :recipe_boxes
  end
end
